/* =====================================================================
   SENTRY SWEEP - a simple raycasting FPS for the Vircon32 console
   ---------------------------------------------------------------------
   Controls:
     D-pad Up/Down     move forward / back
     D-pad Left/Right  turn
     L / R             strafe
     A                 fire
     Y                 toggle minimap
     Start             start / restart
   Goal: destroy every sentry robot in the maze.
   ===================================================================== */

#include "video.h"
#include "input.h"
#include "math.h"
#include "misc.h"
#include "string.h"
#include "time.h"

// ---------------------------------------------------------------------
//   CONSTANTS
// ---------------------------------------------------------------------

// texture and regions (all in one atlas)
#define TextureAtlas      0
#define RegionWallFirst   0      // 256 regions: 1px columns of 4 wall textures
#define RegionSpriteFirst 300    // 448 regions: 1px columns of 7 sprite frames
#define RegionWhite       800    // single white pixel for solid rectangles
#define RegionGunIdle     801
#define RegionGunFire     802

// sprite frames
#define FrameWalkA   0
#define FrameWalkB   1
#define FrameAttack  2
#define FrameHurt    3
#define FrameDead    4
#define FrameMedkit  5
#define FrameAmmo    6

// renderer
#define COLUMNS      128         // rays cast per frame
#define COLUMN_W     5           // 128 * 5 = 640 pixels
#define HORIZON      180
#define VIEW_H       360.0

// map
#define MAP_SIZE     16

// game objects
#define MAX_ENEMIES  8
#define MAX_ITEMS    4
#define ENEMY_HP     3
#define PLAYER_RADIUS 0.28
#define ENEMY_RADIUS  0.35

// game states
#define StateTitle    0
#define StatePlaying  1
#define StateDead     2
#define StateWon      3

// ---------------------------------------------------------------------
//   WORLD DATA
// ---------------------------------------------------------------------

// 0 = empty, 1..4 = wall texture
int[ MAP_SIZE ][ MAP_SIZE ] Map =
{
    { 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 },
    { 1,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1 },
    { 1,0,1,1,1,0,0,0,2,0,0,1,1,1,0,1 },
    { 1,0,1,0,0,0,0,0,0,0,0,0,0,1,0,1 },
    { 1,0,1,0,2,2,2,0,0,3,3,0,0,1,0,1 },
    { 1,0,0,0,2,0,0,0,0,0,3,0,0,0,0,1 },
    { 1,0,0,0,2,0,0,0,0,0,0,0,0,0,0,1 },
    { 1,1,1,0,0,0,0,4,4,0,0,0,0,1,1,1 },
    { 1,0,0,0,0,0,0,4,4,0,0,0,0,0,0,1 },
    { 1,0,0,0,3,0,0,0,0,0,0,2,0,0,0,1 },
    { 1,0,1,0,3,0,0,0,0,0,0,2,0,1,0,1 },
    { 1,0,1,0,0,3,3,0,0,2,2,2,0,1,0,1 },
    { 1,0,1,0,0,0,0,0,0,0,0,0,0,1,0,1 },
    { 1,0,1,1,1,0,0,0,3,0,0,1,1,1,0,1 },
    { 1,0,0,0,0,0,0,0,3,0,0,0,0,0,0,1 },
    { 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 }
};

struct Enemy
{
    float x, y;
    int   hp;
    int   alive;
    int   hurt_timer;
    int   attack_timer;
    int   cooldown;
    int   anim;
    float depth;      // distance to player, for sorting
};

struct Item
{
    float x, y;
    int   type;       // FrameMedkit or FrameAmmo
    int   active;
};

Enemy[ MAX_ENEMIES ] Enemies;
Item[ MAX_ITEMS ] Items;
int[ MAX_ENEMIES + MAX_ITEMS ] DrawOrder;   // 0..7 enemies, 8..11 items
float[ MAX_ENEMIES + MAX_ITEMS ] SortDepth;

// player / camera
float PlayerX, PlayerY;
float DirX, DirY, PlaneX, PlaneY;
int   Health, Ammo, Kills;
int   FireTimer, DamageFlash, PickupFlash, WalkPhase;
int   ShowMap;
int   GameState;
int   StateTimer;

// renderer buffers
float[ COLUMNS ] ZBuffer;
float[ COLUMNS ] CameraX;

// text buffers (Vircon32 chars are ints)
int[ 64 ] TextBuffer;
int[ 16 ] NumberBuffer;

// ---------------------------------------------------------------------
//   HELPERS
// ---------------------------------------------------------------------

int RandomInt( int n )
{
    int r = rand();
    if( r < 0 ) r = -r;
    return r % n;
}

int IsWall( float x, float y )
{
    int mx = (int)x;
    int my = (int)y;
    if( mx < 0 || my < 0 || mx >= MAP_SIZE || my >= MAP_SIZE ) return 1;
    return Map[ my ][ mx ] != 0;
}

// can a body of the given radius stand at (x,y)?
int CanStand( float x, float y, float r )
{
    if( IsWall( x - r, y - r ) ) return 0;
    if( IsWall( x + r, y - r ) ) return 0;
    if( IsWall( x - r, y + r ) ) return 0;
    if( IsWall( x + r, y + r ) ) return 0;
    return 1;
}

// simple line of sight test by sampling along the segment
int LineOfSight( float x1, float y1, float x2, float y2 )
{
    float dx = x2 - x1;
    float dy = y2 - y1;
    float dist = sqrt( dx*dx + dy*dy );
    int steps = (int)(dist * 4.0) + 1;
    float sx = dx / steps;
    float sy = dy / steps;
    float x = x1;
    float y = y1;
    for( int i = 0; i < steps; i++ )
    {
        if( IsWall( x, y ) ) return 0;
        x += sx;
        y += sy;
    }
    return 1;
}

void DrawRect( int x, int y, int w, int h, int color )
{
    set_multiply_color( color );
    select_region( RegionWhite );
    set_drawing_scale( w, h );
    draw_region_zoomed_at( x, y );
}

void PrintNumber( int x, int y, int* label, int value )
{
    strcpy( TextBuffer, label );
    itoa( value, NumberBuffer, 10 );
    strcat( TextBuffer, NumberBuffer );
    print_at( x, y, TextBuffer );
}

void PrintCentered( int y, int* text )
{
    int w = strlen( text ) * 10;
    print_at( (screen_width - w) / 2, y, text );
}

// ---------------------------------------------------------------------
//   SETUP
// ---------------------------------------------------------------------

void DefineRegions()
{
    select_texture( TextureAtlas );

    // wall columns: 256 consecutive 1x64 regions, hotspot at top-left
    define_region_matrix( RegionWallFirst, 0,0, 0,63, 0,0, 256,1, 0 );

    // sprite columns: 448 consecutive 1x64 regions
    define_region_matrix( RegionSpriteFirst, 0,64, 0,127, 0,64, 448,1, 0 );

    // solid pixel (inner pixel of a 4x4 white block)
    select_region( RegionWhite );
    define_region_topleft( 257,1, 257,1 );

    // gun frames, hotspot at bottom center
    select_region( RegionGunIdle );
    define_region( 0,128, 95,223, 48,223 );
    select_region( RegionGunFire );
    define_region( 96,128, 191,223, 144,223 );

    // precompute camera-space x for every column
    for( int c = 0; c < COLUMNS; c++ )
      CameraX[ c ] = 2.0 * (c + 0.5) / COLUMNS - 1.0;
}

void SetEnemy( int i, float x, float y )
{
    Enemies[ i ].x = x;
    Enemies[ i ].y = y;
    Enemies[ i ].hp = ENEMY_HP;
    Enemies[ i ].alive = 1;
    Enemies[ i ].hurt_timer = 0;
    Enemies[ i ].attack_timer = 0;
    Enemies[ i ].cooldown = 90 + RandomInt( 120 );
    Enemies[ i ].anim = RandomInt( 30 );
}

void SetItem( int i, float x, float y, int type )
{
    Items[ i ].x = x;
    Items[ i ].y = y;
    Items[ i ].type = type;
    Items[ i ].active = 1;
}

void ResetGame()
{
    PlayerX = 1.5;  PlayerY = 1.5;
    DirX = 1.0;     DirY = 0.0;
    PlaneX = 0.0;   PlaneY = 0.66;     // ~66 degree field of view

    Health = 100;  Ammo = 30;  Kills = 0;
    FireTimer = 0; DamageFlash = 0; PickupFlash = 0; WalkPhase = 0;

    SetEnemy( 0, 13.5,  1.5 );
    SetEnemy( 1,  8.5,  5.5 );
    SetEnemy( 2,  5.5,  8.5 );
    SetEnemy( 3, 13.5,  8.5 );
    SetEnemy( 4,  2.5,  9.5 );
    SetEnemy( 5,  8.5, 12.5 );
    SetEnemy( 6, 13.5, 14.5 );
    SetEnemy( 7,  5.5, 14.5 );

    SetItem( 0, 14.5,  5.5, FrameMedkit );
    SetItem( 1,  1.5, 12.5, FrameMedkit );
    SetItem( 2,  6.5,  9.5, FrameAmmo );
    SetItem( 3, 10.5,  3.5, FrameAmmo );
}

// ---------------------------------------------------------------------
//   PLAYER
// ---------------------------------------------------------------------

void RotatePlayer( float a )
{
    float c = cos( a );
    float s = sin( a );
    float odx = DirX;
    DirX = DirX * c - DirY * s;
    DirY = odx  * s + DirY * c;
    float opx = PlaneX;
    PlaneX = PlaneX * c - PlaneY * s;
    PlaneY = opx    * s + PlaneY * c;
}

void TryMove( float dx, float dy )
{
    if( CanStand( PlayerX + dx, PlayerY, PLAYER_RADIUS ) ) PlayerX += dx;
    if( CanStand( PlayerX, PlayerY + dy, PLAYER_RADIUS ) ) PlayerY += dy;
}

void FireWeapon()
{
    Ammo--;
    FireTimer = 12;

    // invert camera matrix once
    float invDet = 1.0 / (PlaneX * DirY - DirX * PlaneY);
    int best = -1;
    float bestDepth = ZBuffer[ COLUMNS / 2 ];

    for( int i = 0; i < MAX_ENEMIES; i++ )
    {
        if( !Enemies[ i ].alive ) continue;
        float sx = Enemies[ i ].x - PlayerX;
        float sy = Enemies[ i ].y - PlayerY;
        float tx = invDet * (DirY * sx - DirX * sy);
        float ty = invDet * (-PlaneY * sx + PlaneX * sy);
        if( ty < 0.1 ) continue;
        if( ty >= bestDepth ) continue;

        // horizontal offset from crosshair, in world units at that depth
        if( fabs( tx ) < 0.32 )
        {
            best = i;
            bestDepth = ty;
        }
    }

    if( best >= 0 )
    {
        Enemies[ best ].hp--;
        Enemies[ best ].hurt_timer = 10;
        Enemies[ best ].cooldown += 20;     // stagger
        if( Enemies[ best ].hp <= 0 )
        {
            Enemies[ best ].alive = 0;
            Kills++;
        }
    }
}

void UpdatePlayer()
{
    select_gamepad( 0 );

    float moveSpeed = 0.055;
    float turnSpeed = 0.045;
    int moving = 0;

    if( gamepad_left()  > 0 ) RotatePlayer( -turnSpeed );
    if( gamepad_right() > 0 ) RotatePlayer(  turnSpeed );

    if( gamepad_up() > 0 )   { TryMove(  DirX * moveSpeed,  DirY * moveSpeed ); moving = 1; }
    if( gamepad_down() > 0 ) { TryMove( -DirX * moveSpeed, -DirY * moveSpeed ); moving = 1; }

    // strafe along the camera plane (perpendicular to view direction)
    float side = 0.8 * moveSpeed / 0.66;
    if( gamepad_button_l() > 0 ) { TryMove( -PlaneX * side, -PlaneY * side ); moving = 1; }
    if( gamepad_button_r() > 0 ) { TryMove(  PlaneX * side,  PlaneY * side ); moving = 1; }

    if( moving ) WalkPhase++;

    if( gamepad_button_y() == 1 ) ShowMap = !ShowMap;

    if( FireTimer > 0 ) FireTimer--;
    if( gamepad_button_a() > 0 && FireTimer == 0 && Ammo > 0 )
      FireWeapon();

    // pickups
    for( int i = 0; i < MAX_ITEMS; i++ )
    {
        if( !Items[ i ].active ) continue;
        float dx = Items[ i ].x - PlayerX;
        float dy = Items[ i ].y - PlayerY;
        if( dx*dx + dy*dy < 0.36 )
        {
            if( Items[ i ].type == FrameMedkit )
            {
                if( Health >= 100 ) continue;
                Health = min( 100, Health + 35 );
            }
            else Ammo += 15;
            Items[ i ].active = 0;
            PickupFlash = 10;
        }
    }

    if( DamageFlash > 0 ) DamageFlash--;
    if( PickupFlash > 0 ) PickupFlash--;
}

// ---------------------------------------------------------------------
//   ENEMIES
// ---------------------------------------------------------------------

void UpdateEnemies()
{
    for( int i = 0; i < MAX_ENEMIES; i++ )
    {
        if( !Enemies[ i ].alive ) continue;

        Enemies[ i ].anim++;
        if( Enemies[ i ].hurt_timer > 0 )   Enemies[ i ].hurt_timer--;
        if( Enemies[ i ].attack_timer > 0 ) Enemies[ i ].attack_timer--;

        float dx = PlayerX - Enemies[ i ].x;
        float dy = PlayerY - Enemies[ i ].y;
        float dist = sqrt( dx*dx + dy*dy );
        Enemies[ i ].depth = dist;

        if( dist > 9.0 ) continue;
        if( !LineOfSight( Enemies[ i ].x, Enemies[ i ].y, PlayerX, PlayerY ) ) continue;

        // chase until close
        if( dist > 1.3 && Enemies[ i ].hurt_timer == 0 )
        {
            float speed = 0.022;
            float mx = dx / dist * speed;
            float my = dy / dist * speed;
            if( CanStand( Enemies[ i ].x + mx, Enemies[ i ].y, ENEMY_RADIUS ) ) Enemies[ i ].x += mx;
            if( CanStand( Enemies[ i ].x, Enemies[ i ].y + my, ENEMY_RADIUS ) ) Enemies[ i ].y += my;
        }

        // shoot at the player now and then
        Enemies[ i ].cooldown--;
        if( Enemies[ i ].cooldown <= 0 )
        {
            Enemies[ i ].cooldown = 70 + RandomInt( 90 );
            Enemies[ i ].attack_timer = 12;

            // accuracy drops with distance
            int chance = 90 - (int)(dist * 8.0);
            if( RandomInt( 100 ) < chance )
            {
                Health -= 6 + RandomInt( 6 );
                DamageFlash = 14;
            }
        }
    }
}

// ---------------------------------------------------------------------
//   RENDERING
// ---------------------------------------------------------------------

void DrawFloorAndCeiling()
{
    // banded gradients: darker towards the horizon (fake fog)
    for( int b = 0; b < 9; b++ )
    {
        int y = b * 20;
        int g = 20 + (8 - b) * 7;
        DrawRect( 0, y, screen_width, 20, make_color_rgb( g, g, g + 12 ) );
        int f = 24 + b * 9;
        DrawRect( 0, HORIZON + y, screen_width, 20, make_color_rgb( f + 6, f, f - 6 ) );
    }
}

void DrawWalls()
{
    for( int c = 0; c < COLUMNS; c++ )
    {
        float rayX = DirX + PlaneX * CameraX[ c ];
        float rayY = DirY + PlaneY * CameraX[ c ];

        int mapX = (int)PlayerX;
        int mapY = (int)PlayerY;

        float deltaX = 1000000.0;
        float deltaY = 1000000.0;
        if( rayX != 0.0 ) deltaX = fabs( 1.0 / rayX );
        if( rayY != 0.0 ) deltaY = fabs( 1.0 / rayY );

        int stepX, stepY;
        float sideX, sideY;

        if( rayX < 0.0 ) { stepX = -1; sideX = (PlayerX - mapX) * deltaX; }
        else             { stepX =  1; sideX = (mapX + 1.0 - PlayerX) * deltaX; }
        if( rayY < 0.0 ) { stepY = -1; sideY = (PlayerY - mapY) * deltaY; }
        else             { stepY =  1; sideY = (mapY + 1.0 - PlayerY) * deltaY; }

        // DDA through the grid
        int side = 0;
        int tile = 0;
        while( tile == 0 )
        {
            if( sideX < sideY ) { sideX += deltaX; mapX += stepX; side = 0; }
            else                { sideY += deltaY; mapY += stepY; side = 1; }
            tile = Map[ mapY ][ mapX ];
        }

        float dist;
        if( side == 0 ) dist = sideX - deltaX;
        else            dist = sideY - deltaY;
        if( dist < 0.05 ) dist = 0.05;
        ZBuffer[ c ] = dist;

        // where on the wall did the ray hit? (0..1)
        float wallX;
        if( side == 0 ) wallX = PlayerY + dist * rayY;
        else            wallX = PlayerX + dist * rayX;
        wallX -= floor( wallX );

        int texX = (int)(wallX * 64.0);
        if( texX > 63 ) texX = 63;
        if( side == 0 && rayX > 0.0 ) texX = 63 - texX;
        if( side == 1 && rayY < 0.0 ) texX = 63 - texX;

        float lineH = VIEW_H / dist;

        // distance + side shading
        int light = 255 - (int)(dist * 18.0);
        if( light < 50 ) light = 50;
        if( side == 1 ) light = light * 3 / 4;
        set_multiply_color( make_color_rgb( light, light, light ) );

        select_region( RegionWallFirst + (tile - 1) * 64 + texX );
        set_drawing_scale( COLUMN_W, lineH / 64.0 );
        draw_region_zoomed_at( c * COLUMN_W, HORIZON - (int)(lineH / 2.0) );
    }
}

// draws one billboard sprite, clipped against the wall z-buffer
void DrawSprite( float wx, float wy, int frame, float scale, int tint )
{
    float invDet = 1.0 / (PlaneX * DirY - DirX * PlaneY);
    float sx = wx - PlayerX;
    float sy = wy - PlayerY;
    float tx = invDet * (DirY * sx - DirX * sy);
    float ty = invDet * (-PlaneY * sx + PlaneX * sy);
    if( ty < 0.15 ) return;

    float screenX = 320.0 * (1.0 + tx / ty);
    float fullH = VIEW_H / ty;           // height of a full wall at this depth
    float size = fullH * scale;
    float left = screenX - size / 2.0;
    int   top  = HORIZON + (int)(fullH / 2.0 - size);   // feet on the floor

    int c0 = (int)(left / COLUMN_W);
    int c1 = (int)((left + size) / COLUMN_W);
    if( c0 < 0 ) c0 = 0;
    if( c1 > COLUMNS - 1 ) c1 = COLUMNS - 1;
    if( c0 > c1 ) return;

    int light = 255 - (int)(ty * 18.0);
    if( light < 60 ) light = 60;
    int r = get_color_red( tint )   * light / 255;
    int g = get_color_green( tint ) * light / 255;
    int b = get_color_blue( tint )  * light / 255;
    set_multiply_color( make_color_rgb( r, g, b ) );
    set_drawing_scale( COLUMN_W, size / 64.0 );

    int firstRegion = RegionSpriteFirst + frame * 64;
    for( int c = c0; c <= c1; c++ )
    {
        if( ty >= ZBuffer[ c ] ) continue;
        int texX = (int)(((c * COLUMN_W + COLUMN_W / 2) - left) * 64.0 / size);
        if( texX < 0 || texX > 63 ) continue;
        select_region( firstRegion + texX );
        draw_region_zoomed_at( c * COLUMN_W, top );
    }
}

void DrawSprites()
{
    // gather and sort far-to-near (painter's algorithm)
    int count = 0;
    for( int i = 0; i < MAX_ENEMIES; i++ )
    {
        float dx = Enemies[ i ].x - PlayerX;
        float dy = Enemies[ i ].y - PlayerY;
        DrawOrder[ count ] = i;
        SortDepth[ count ] = dx*dx + dy*dy;
        count++;
    }
    for( int i = 0; i < MAX_ITEMS; i++ )
    {
        if( !Items[ i ].active ) continue;
        float dx = Items[ i ].x - PlayerX;
        float dy = Items[ i ].y - PlayerY;
        DrawOrder[ count ] = MAX_ENEMIES + i;
        SortDepth[ count ] = dx*dx + dy*dy;
        count++;
    }
    for( int i = 1; i < count; i++ )
    {
        int j = i;
        while( j > 0 && SortDepth[ j - 1 ] < SortDepth[ j ] )
        {
            float td = SortDepth[ j ]; SortDepth[ j ] = SortDepth[ j - 1 ]; SortDepth[ j - 1 ] = td;
            int to = DrawOrder[ j ];   DrawOrder[ j ] = DrawOrder[ j - 1 ]; DrawOrder[ j - 1 ] = to;
            j--;
        }
    }

    for( int k = 0; k < count; k++ )
    {
        int id = DrawOrder[ k ];
        if( id < MAX_ENEMIES )
        {
            int frame;
            if( !Enemies[ id ].alive )                frame = FrameDead;
            else if( Enemies[ id ].hurt_timer > 0 )   frame = FrameHurt;
            else if( Enemies[ id ].attack_timer > 0 ) frame = FrameAttack;
            else if( (Enemies[ id ].anim / 15) % 2 )  frame = FrameWalkB;
            else                                      frame = FrameWalkA;
            DrawSprite( Enemies[ id ].x, Enemies[ id ].y, frame, 0.75, color_white );
        }
        else
        {
            int it = id - MAX_ENEMIES;
            DrawSprite( Items[ it ].x, Items[ it ].y, Items[ it ].type, 0.5, color_white );
        }
    }
}

void DrawWeapon()
{
    // weapon bob while walking
    float bob = sin( WalkPhase * 0.18 );
    int gx = 320 + (int)(bob * 14.0);
    int gy = 362 + (int)(fabs( bob ) * 10.0);
    if( FireTimer > 8 ) gy += 10;      // recoil

    set_multiply_color( color_white );
    if( FireTimer > 8 ) select_region( RegionGunFire );
    else                select_region( RegionGunIdle );
    set_drawing_scale( 2.0, 2.0 );
    draw_region_zoomed_at( gx, gy );
}

void DrawMinimap()
{
    int cell = 6;
    int ox = screen_width - MAP_SIZE * cell - 10;
    int oy = 10;
    DrawRect( ox - 2, oy - 2, MAP_SIZE * cell + 4, MAP_SIZE * cell + 4, make_color_rgba( 0, 0, 0, 160 ) );
    for( int y = 0; y < MAP_SIZE; y++ )
      for( int x = 0; x < MAP_SIZE; x++ )
        if( Map[ y ][ x ] )
          DrawRect( ox + x * cell, oy + y * cell, cell, cell, make_color_rgba( 150, 150, 170, 200 ) );

    for( int i = 0; i < MAX_ENEMIES; i++ )
      if( Enemies[ i ].alive )
        DrawRect( ox + (int)(Enemies[ i ].x * cell) - 2, oy + (int)(Enemies[ i ].y * cell) - 2, 4, 4, color_red );

    int pxm = ox + (int)(PlayerX * cell);
    int pym = oy + (int)(PlayerY * cell);
    DrawRect( pxm - 2, pym - 2, 4, 4, color_green );
    DrawRect( pxm + (int)(DirX * 6.0) - 1, pym + (int)(DirY * 6.0) - 1, 2, 2, color_yellow );
}

void DrawHUD()
{
    // crosshair
    DrawRect( 318, 170, 4, 7, make_color_rgba( 255, 255, 255, 180 ) );
    DrawRect( 318, 183, 4, 7, make_color_rgba( 255, 255, 255, 180 ) );
    DrawRect( 308, 178, 7, 4, make_color_rgba( 255, 255, 255, 180 ) );
    DrawRect( 325, 178, 7, 4, make_color_rgba( 255, 255, 255, 180 ) );

    // screen flashes
    if( DamageFlash > 0 )
      DrawRect( 0, 0, screen_width, screen_height, make_color_rgba( 255, 0, 0, DamageFlash * 8 ) );
    if( PickupFlash > 0 )
      DrawRect( 0, 0, screen_width, screen_height, make_color_rgba( 255, 255, 120, PickupFlash * 5 ) );

    // health bar
    DrawRect( 10, 326, 164, 24, make_color_rgba( 0, 0, 0, 170 ) );
    int hw = max( 0, Health ) * 160 / 100;
    int hc = make_color_rgb( 30, 150, 60 );
    if( Health < 60 ) hc = make_color_rgb( 180, 140, 20 );
    if( Health < 30 ) hc = make_color_rgb( 190, 30, 30 );
    DrawRect( 12, 328, hw, 20, hc );
    set_multiply_color( color_white );
    PrintNumber( 20, 328, "HP ", max( 0, Health ) );

    // ammo and kills
    DrawRect( 466, 326, 164, 24, make_color_rgba( 0, 0, 0, 170 ) );
    set_multiply_color( color_white );
    PrintNumber( 476, 328, "AMMO ", Ammo );
    PrintNumber( 10, 10, "ROBOTS LEFT ", MAX_ENEMIES - Kills );

    if( Ammo == 0 )
    {
        set_multiply_color( color_orange );
        PrintCentered( 220, "OUT OF AMMO - FIND A CRATE" );
    }
    set_multiply_color( color_white );
}

void DrawWorld()
{
    DrawFloorAndCeiling();
    DrawWalls();
    DrawSprites();
}

// ---------------------------------------------------------------------
//   MAIN
// ---------------------------------------------------------------------

void main()
{
    DefineRegions();
    ResetGame();
    GameState = StateTitle;
    StateTimer = 0;
    ShowMap = 0;

    while( true )
    {
        select_gamepad( 0 );
        select_texture( TextureAtlas );
        StateTimer++;

        if( GameState == StateTitle )
        {
            // slowly spinning view behind the title
            RotatePlayer( 0.004 );
            DrawWorld();
            DrawRect( 0, 90, screen_width, 170, make_color_rgba( 0, 0, 0, 170 ) );
            set_multiply_color( color_orange );
            PrintCentered( 110, "S E N T R Y   S W E E P" );
            set_multiply_color( color_white );
            PrintCentered( 150, "Destroy all 8 sentry robots" );
            PrintCentered( 180, "D-PAD move/turn   L/R strafe   A fire   Y map" );
            if( (StateTimer / 30) % 2 ) PrintCentered( 220, "PRESS START" );

            if( gamepad_button_start() == 1 )
            {
                ResetGame();
                GameState = StatePlaying;
                StateTimer = 0;
            }
        }

        else if( GameState == StatePlaying )
        {
            UpdatePlayer();
            UpdateEnemies();
            DrawWorld();
            DrawWeapon();
            if( ShowMap ) DrawMinimap();
            DrawHUD();

            if( Health <= 0 )      { GameState = StateDead; StateTimer = 0; }
            if( Kills == MAX_ENEMIES ) { GameState = StateWon; StateTimer = 0; }
        }

        else
        {
            DrawWorld();
            int tint = make_color_rgba( 0, 0, 0, 170 );
            if( GameState == StateDead ) tint = make_color_rgba( 120, 0, 0, 170 );
            DrawRect( 0, 0, screen_width, screen_height, tint );

            set_multiply_color( color_white );
            if( GameState == StateDead ) PrintCentered( 140, "YOU WERE DESTROYED" );
            else                         PrintCentered( 140, "SECTOR CLEARED!" );
            strcpy( TextBuffer, "ROBOTS DESTROYED: " );
            itoa( Kills, NumberBuffer, 10 );
            strcat( TextBuffer, NumberBuffer );
            PrintCentered( 180, TextBuffer );
            if( StateTimer > 60 && (StateTimer / 30) % 2 ) PrintCentered( 230, "PRESS START" );

            if( StateTimer > 60 && gamepad_button_start() == 1 )
            {
                ResetGame();
                GameState = StatePlaying;
                StateTimer = 0;
            }
        }

        end_frame();
    }
}
