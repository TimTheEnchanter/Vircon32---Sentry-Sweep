/* =====================================================================
   SENTRY SWEEP - a raycasting FPS for the Vircon32 console
   ---------------------------------------------------------------------
   Controls:
     D-pad Up/Down     move forward / back
     D-pad Left/Right  turn
     L / R             strafe
     A                 fire
     X                 switch weapon (blaster, shotgun, plasma rifle)
     B                 use (exit switch, suspicious walls)
     Y                 toggle minimap
     Start             start / continue
   Three levels: find keycards, open doors, reach the exit,
   and destroy the Warden at the heart of the Core.
   ===================================================================== */

#include "video.h"
#include "input.h"
#include "math.h"
#include "misc.h"
#include "string.h"
#include "time.h"
#include "audio.h"
#include "levels.h"

// ---------------------------------------------------------------------
//   CONSTANTS
// ---------------------------------------------------------------------

// texture regions (all in one atlas, see tools/make_atlas.py)
#define TextureAtlas       0
#define RegionWallFirst    0       // 512 regions: 1px columns of 8 wall textures
#define RegionSpriteFirst  512     // 2048 regions: 1px columns of 32 sprite frames
#define RegionBossFirst    2560    // 512 regions: 1px columns of 4 boss frames (128px)
#define RegionGunIdle      3100
#define RegionGunFire      3101
#define RegionWhite        3102
#define RegionShotgunIdle  3103
#define RegionShotgunFire  3104
#define RegionRifleIdle    3105
#define RegionRifleFire    3106

// sprite frames
#define FrameMedkit       5
#define FrameAmmo         6
#define FrameRedKey       7
#define FrameBlueKey      8
#define FramePlasma       9
#define FrameBossPlasma   10
#define FrameShotgun      25
#define FrameRifle        26
#define FrameShells       27
#define FrameCells        28
#define FrameBolt         29

// weapons
#define WeaponBlaster   0
#define WeaponShotgun   1
#define WeaponRifle     2

// map tiles
#define TileExit       5
#define TileDoor       6
#define TileRedDoor    7
#define TileBlueDoor   8
#define TileSecretMin  11

// enemy types
#define EnemySentry   0
#define EnemyDrone    1
#define EnemyHeavy    2
#define EnemyTurret   3
#define EnemyBoss     4

// sounds (same order as in VirconFPS.xml)
#define SoundPlayerShot      0
#define SoundEnemyShot       1
#define SoundRobotHit        2
#define SoundRobotDestroyed  3
#define SoundPlayerHurt      4
#define SoundPickup          5
#define SoundEmptyClick      6
#define SoundGameOver        7
#define SoundVictory         8
#define SoundDoorOpen        9
#define SoundSecret          10
#define SoundPlasmaFire      11
#define SoundPlasmaHit       12
#define SoundLocked          13
#define SoundLevelComplete   14
#define SoundBossRoar        15
#define SoundShotgun         16
#define SoundPlasmaRifle     17
#define SoundWeaponPickup    18

// renderer
#define COLUMNS      128           // rays cast per frame
#define COLUMN_W     5             // 128 * 5 = 640 pixels
#define HORIZON      180
#define VIEW_H       360.0

// world
#define MAP_SIZE        32
#define MAX_ENEMIES     MAX_LEVEL_ENEMIES
#define MAX_ITEMS       32          // level items + room for enemy drops
#define MAX_DOORS       32
#define MAX_PROJECTILES 16
#define MAX_SPRITES     96
#define MAX_BOLTS       16          // plasma rifle shots in flight
#define PLAYER_RADIUS   0.28

// game states
#define StateTitle      0
#define StateIntro      1
#define StatePlaying    2
#define StateLevelDone  3
#define StateDead       4
#define StateWon        5

// ---------------------------------------------------------------------
//   ENEMY TYPE TABLES   (sentry, drone, heavy, turret, boss)
// ---------------------------------------------------------------------

int[ 5 ]   TypeHP           = { 3, 1, 8, 5, 50 };
float[ 5 ] TypeSpeed        = { 0.022, 0.05, 0.012, 0.0, 0.016 };
float[ 5 ] TypeScale        = { 0.75, 0.42, 0.95, 0.7, 1.5 };
float[ 5 ] TypeRadius       = { 0.3, 0.25, 0.38, 0.3, 0.6 };     // collision with walls
float[ 5 ] TypeHitRadius    = { 0.32, 0.26, 0.42, 0.3, 0.75 };   // for the player's shots
float[ 5 ] TypeRange        = { 9.0, 8.0, 11.0, 13.0, 20.0 };
float[ 5 ] TypeStopDistance = { 1.3, 0.8, 2.5, 0.0, 3.0 };
int[ 5 ]   TypeCooldown     = { 70, 40, 110, 70, 75 };
int[ 5 ]   TypeCooldownRand = { 90, 50, 80, 50, 30 };
int[ 5 ]   TypeFrameBase    = { 0, 11, 16, 21, 0 };
int[ 5 ]   TypeDropChance   = { 30, 15, 70, 40, 0 };            // % chance of dropping ammo
int[ 5 ]   TypeDropItem     = { 6, 6, 28, 27, 0 };              // bullets, bullets, cells, shells
int[ 5 ]   TypeDropAmount   = { 8, 8, 15, 4, 0 };

// ---------------------------------------------------------------------
//   WORLD DATA
// ---------------------------------------------------------------------

int[ MAP_SIZE ][ MAP_SIZE ] Map;
int[ MAP_SIZE ][ MAP_SIZE ] DoorAt;       // 0 = no door, else door index + 1

struct Door
{
    int   x, y;
    int   lock;           // 0 none, 1 red, 2 blue
    int   opening;
    float open;           // 0 closed .. 1 fully open
};

struct Enemy
{
    float x, y;
    int   type;           // -1 = unused slot
    int   hp;
    int   alive;
    int   hurt_timer;
    int   attack_timer;
    int   cooldown;
    int   anim;
    int   sees;           // cached line of sight to the player
    int   burst;          // turret: shots left in the current burst
};

struct Item
{
    float x, y;
    int   type;           // frame: medkit, ammo, red key, blue key
    int   amount;
    int   active;
};

struct Projectile
{
    float x, y, dx, dy;
    int   active;
    int   frame;
    int   damage;
    int   life;
};

Door[ MAX_DOORS ] Doors;
Enemy[ MAX_ENEMIES ] Enemies;
Item[ MAX_ITEMS ] Items;
Projectile[ MAX_PROJECTILES ] Projectiles;
Projectile[ MAX_BOLTS ] Bolts;          // the plasma rifle's shots
int[ MAX_ENEMIES ] PelletHits;           // shotgun damage per robot this shot
int DoorCount;

int[ MAX_SPRITES ] DrawOrder;      // <100 enemy, 100+ item, 200+ projectile, 300+ bolt
float[ MAX_SPRITES ] SortDepth;

// player / camera
float PlayerX, PlayerY;
float DirX, DirY, PlaneX, PlaneY;
int   Health, Ammo, Shells, Cells;
int   Weapon, HasShotgun, HasRifle;
int   FlashTimer;
int   HasRedKey, HasBlueKey;
int   FireTimer, DamageFlash, PickupFlash, WalkPhase, LockedTimer;
int   ShowMap;

// game progress
int GameState, StateTimer, FrameCount;
int CurrentLevel, LevelFrames;
int Kills, EnemiesTotal, SecretsFound, SecretsTotal;
int TotalKills, TotalEnemies, TotalSecrets, TotalSecretsAvailable;
int LevelStartAmmo, LevelStartShells, LevelStartCells, LevelStartShotgun, LevelStartRifle;
int BossIndex, BossActive, BossEnraged, BossDeathTimer;

// renderer buffers
float[ COLUMNS ] ZBuffer;
float[ COLUMNS ] CameraX;

// text
int[ 64 ] TextBuffer;
int[ 16 ] NumberBuffer;
int[ 48 ] LevelName;
int[ 64 ] MessageText;
int MessageTimer;

// ---------------------------------------------------------------------
//   HELPERS
// ---------------------------------------------------------------------

int RandomInt( int n )
{
    int r = rand();
    if( r < 0 ) r = -r;
    return r % n;
}

float RandomPitch()
{
    return 0.92 + RandomInt( 17 ) / 100.0;
}

// plays a sound on the first free channel with the given volume and pitch
void PlaySfx( int sound, float volume, float speed )
{
    if( volume <= 0.02 ) return;
    for( int ch = 0; ch < sound_channels; ch++ )
    {
        if( get_channel_state( ch ) != channel_stopped ) continue;
        select_channel( ch );
        set_channel_volume( volume );
        set_channel_speed( speed );
        set_channel_loop( false );
        play_sound_in_channel( sound, ch );
        return;
    }
}

// volume for a sound coming from a world position
float VolumeAt( float x, float y )
{
    float dx = x - PlayerX;
    float dy = y - PlayerY;
    float v = 1.0 - sqrt( dx*dx + dy*dy ) / 14.0;
    if( v < 0.0 ) v = 0.0;
    return v;
}

void ShowMessage( int* text )
{
    strcpy( MessageText, text );
    MessageTimer = 150;
}

// is this map cell blocking movement and sight?
int IsSolid( int mx, int my )
{
    if( mx < 0 || my < 0 || mx >= MAP_SIZE || my >= MAP_SIZE ) return 1;
    int t = Map[ my ][ mx ];
    if( t == 0 ) return 0;
    if( t >= TileDoor && t <= TileBlueDoor )
      return Doors[ DoorAt[ my ][ mx ] - 1 ].open < 0.9;
    return 1;
}

int IsWall( float x, float y )
{
    return IsSolid( (int)x, (int)y );
}

int CanStand( float x, float y, float r )
{
    if( IsWall( x - r, y - r ) ) return 0;
    if( IsWall( x + r, y - r ) ) return 0;
    if( IsWall( x - r, y + r ) ) return 0;
    if( IsWall( x + r, y + r ) ) return 0;
    return 1;
}

int LineOfSight( float x1, float y1, float x2, float y2 )
{
    float dx = x2 - x1;
    float dy = y2 - y1;
    float dist = sqrt( dx*dx + dy*dy );
    int steps = (int)(dist * 3.0) + 1;
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

// prints "label a / b" centered
void PrintRatio( int y, int* label, int a, int b )
{
    strcpy( TextBuffer, label );
    itoa( a, NumberBuffer, 10 );
    strcat( TextBuffer, NumberBuffer );
    strcat( TextBuffer, " / " );
    itoa( b, NumberBuffer, 10 );
    strcat( TextBuffer, NumberBuffer );
    PrintCentered( y, TextBuffer );
}

// ---------------------------------------------------------------------
//   SETUP
// ---------------------------------------------------------------------

void DefineRegions()
{
    select_texture( TextureAtlas );

    // walls: 512 consecutive 1x64 columns
    define_region_matrix( RegionWallFirst, 0,0, 0,63, 0,0, 512,1, 0 );

    // sprite frames 0-15 and 16-31: 1x64 columns, hotspot at the top
    define_region_matrix( RegionSpriteFirst,        0,64,  0,127, 0,64,  1024,1, 0 );
    define_region_matrix( RegionSpriteFirst + 1024, 0,128, 0,191, 0,128, 1024,1, 0 );

    // boss frames: 1x128 columns
    define_region_matrix( RegionBossFirst, 0,192, 0,319, 0,192, 512,1, 0 );

    select_region( RegionGunIdle );
    define_region( 0,320, 95,415, 48,415 );
    select_region( RegionGunFire );
    define_region( 96,320, 191,415, 144,415 );

    select_region( RegionShotgunIdle );
    define_region( 192,320, 287,415, 240,415 );
    select_region( RegionShotgunFire );
    define_region( 288,320, 383,415, 336,415 );
    select_region( RegionRifleIdle );
    define_region( 384,320, 479,415, 432,415 );
    select_region( RegionRifleFire );
    define_region( 480,320, 575,415, 528,415 );

    select_region( RegionWhite );
    define_region_topleft( 601,1, 601,1 );

    for( int c = 0; c < COLUMNS; c++ )
      CameraX[ c ] = 2.0 * (c + 0.5) / COLUMNS - 1.0;
}

void SpawnItem( int type, float x, float y, int amount )
{
    for( int i = 0; i < MAX_ITEMS; i++ )
    {
        if( Items[ i ].active ) continue;
        Items[ i ].type = type;
        Items[ i ].x = x;
        Items[ i ].y = y;
        Items[ i ].amount = amount;
        Items[ i ].active = 1;
        return;
    }
}

void LoadLevel( int level )
{
    int baseTile = level * 1024;
    DoorCount = 0;
    SecretsTotal = 0;

    for( int y = 0; y < MAP_SIZE; y++ )
      for( int x = 0; x < MAP_SIZE; x++ )
      {
          int t = LevelTiles[ baseTile + y * MAP_SIZE + x ];
          Map[ y ][ x ] = t;
          DoorAt[ y ][ x ] = 0;

          if( t >= TileDoor && t <= TileBlueDoor && DoorCount < MAX_DOORS )
          {
              Doors[ DoorCount ].x = x;
              Doors[ DoorCount ].y = y;
              Doors[ DoorCount ].lock = t - TileDoor;
              Doors[ DoorCount ].opening = 0;
              Doors[ DoorCount ].open = 0.0;
              DoorCount++;
              DoorAt[ y ][ x ] = DoorCount;
          }
          if( t >= TileSecretMin ) SecretsTotal++;
      }

    // player start and facing (0 east, 1 south, 2 west, 3 north)
    PlayerX = LevelStarts[ level * 3 ] + 0.5;
    PlayerY = LevelStarts[ level * 3 + 1 ] + 0.5;
    int facing = LevelStarts[ level * 3 + 2 ];
    DirX = 0.0; DirY = 0.0;
    if( facing == 0 ) DirX =  1.0;
    if( facing == 1 ) DirY =  1.0;
    if( facing == 2 ) DirX = -1.0;
    if( facing == 3 ) DirY = -1.0;
    PlaneX = -DirY * 0.66;
    PlaneY =  DirX * 0.66;

    // enemies
    EnemiesTotal = 0;
    BossIndex = -1;
    for( int i = 0; i < MAX_ENEMIES; i++ )
    {
        int e = (level * MAX_LEVEL_ENEMIES + i) * 3;
        int type = LevelEnemies[ e ];
        Enemies[ i ].type = type;
        Enemies[ i ].alive = 0;
        if( type < 0 ) continue;

        Enemies[ i ].x = LevelEnemies[ e + 1 ] + 0.5;
        Enemies[ i ].y = LevelEnemies[ e + 2 ] + 0.5;
        Enemies[ i ].hp = TypeHP[ type ];
        Enemies[ i ].alive = 1;
        Enemies[ i ].hurt_timer = 0;
        Enemies[ i ].attack_timer = 0;
        Enemies[ i ].cooldown = 60 + RandomInt( 120 );
        Enemies[ i ].anim = RandomInt( 30 );
        Enemies[ i ].sees = 0;
        Enemies[ i ].burst = 0;
        EnemiesTotal++;
        if( type == EnemyBoss ) BossIndex = i;
    }

    // items
    for( int i = 0; i < MAX_ITEMS; i++ ) Items[ i ].active = 0;
    for( int i = 0; i < MAX_LEVEL_ITEMS; i++ )
    {
        int it = (level * MAX_LEVEL_ITEMS + i) * 3;
        int type = LevelItems[ it ];
        if( type < 0 ) continue;
        int amount = 20;
        if( type == FrameMedkit )  amount = 35;
        if( type == FrameShotgun ) amount = 8;
        if( type == FrameRifle )   amount = 40;
        if( type == FrameShells )  amount = 8;
        if( type == FrameCells )   amount = 30;
        SpawnItem( type, LevelItems[ it + 1 ] + 0.5, LevelItems[ it + 2 ] + 0.5, amount );
    }

    for( int i = 0; i < MAX_PROJECTILES; i++ ) Projectiles[ i ].active = 0;
    for( int i = 0; i < MAX_BOLTS; i++ ) Bolts[ i ].active = 0;

    HasRedKey = 0;  HasBlueKey = 0;
    Kills = 0;      SecretsFound = 0;
    LevelFrames = 0;
    BossActive = 0; BossEnraged = 0; BossDeathTimer = 0;
    FireTimer = 0;  FlashTimer = 0;  DamageFlash = 0; PickupFlash = 0; LockedTimer = 0;
    MessageTimer = 0;
    LevelStartAmmo = Ammo;
    LevelStartShells = Shells;
    LevelStartCells = Cells;
    LevelStartShotgun = HasShotgun;
    LevelStartRifle = HasRifle;

    GetLevelName( level, LevelName );
}

void NewGame()
{
    Health = 100;
    Ammo = 30;
    Shells = 0;  Cells = 0;
    Weapon = WeaponBlaster;
    HasShotgun = 0;  HasRifle = 0;
    CurrentLevel = 0;
    TotalKills = 0;   TotalEnemies = 0;
    TotalSecrets = 0; TotalSecretsAvailable = 0;
    LoadLevel( 0 );
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

void DamagePlayer( int amount )
{
    Health -= amount;
    DamageFlash = 14;
    PlaySfx( SoundPlayerHurt, 0.9, RandomPitch() );
}

void KillEnemy( int i )
{
    Enemies[ i ].alive = 0;
    Kills++;
    int type = Enemies[ i ].type;

    if( type == EnemyBoss )
    {
        BossDeathTimer = 160;
        PlaySfx( SoundRobotDestroyed, 1.0, 0.6 );
        PlaySfx( SoundBossRoar, 1.0, 1.3 );
        ShowMessage( "THE WARDEN IS FALLING!" );
        return;
    }

    PlaySfx( SoundRobotDestroyed, 1.0, RandomPitch() );
    if( RandomInt( 100 ) < TypeDropChance[ type ] )
      SpawnItem( TypeDropItem[ type ], Enemies[ i ].x, Enemies[ i ].y, TypeDropAmount[ type ] );
}

void DamageEnemy( int i, int damage )
{
    Enemies[ i ].hp -= damage;
    Enemies[ i ].hurt_timer = 10;
    Enemies[ i ].sees = 1;                // getting shot wakes robots up
    if( Enemies[ i ].type != EnemyBoss ) Enemies[ i ].cooldown += 20;

    if( Enemies[ i ].hp <= 0 ) { KillEnemy( i ); return; }

    PlaySfx( SoundRobotHit, 0.8, RandomPitch() );
    if( i == BossIndex && !BossEnraged && Enemies[ i ].hp <= TypeHP[ EnemyBoss ] / 2 )
    {
        BossEnraged = 1;
        PlaySfx( SoundBossRoar, 1.0, 1.15 );
        ShowMessage( "THE WARDEN IS ENRAGED!" );
    }
}

// finds the nearest robot along a line of fire; offset is the shot's
// position across the screen (-1 left edge .. 1 right edge, 0 = crosshair)
int FindTarget( float offset, float maxRange )
{
    float invDet = 1.0 / (PlaneX * DirY - DirX * PlaneY);
    int column = COLUMNS / 2 + (int)(offset * (COLUMNS / 2));
    if( column < 0 ) column = 0;
    if( column > COLUMNS - 1 ) column = COLUMNS - 1;
    float bestDepth = ZBuffer[ column ];
    if( bestDepth > maxRange ) bestDepth = maxRange;
    int best = -1;

    for( int i = 0; i < MAX_ENEMIES; i++ )
    {
        if( Enemies[ i ].type < 0 || !Enemies[ i ].alive ) continue;
        float sx = Enemies[ i ].x - PlayerX;
        float sy = Enemies[ i ].y - PlayerY;
        float tx = invDet * (DirY * sx - DirX * sy);
        float ty = invDet * (-PlaneY * sx + PlaneX * sy);
        if( ty < 0.1 || ty >= bestDepth ) continue;
        if( fabs( tx - offset * ty ) < TypeHitRadius[ Enemies[ i ].type ] )
        {
            best = i;
            bestDepth = ty;
        }
    }
    return best;
}

void FireBlaster()
{
    Ammo--;
    FireTimer = 12;
    FlashTimer = 4;
    PlaySfx( SoundPlayerShot, 0.7, RandomPitch() );
    int target = FindTarget( 0.0, 100.0 );
    if( target >= 0 ) DamageEnemy( target, 1 );
}

// seven pellets in a fan: up close most of them hit, far away only a few do
void FireShotgun()
{
    Shells--;
    FireTimer = 40;
    FlashTimer = 6;
    PlaySfx( SoundShotgun, 0.9, RandomPitch() );

    for( int i = 0; i < MAX_ENEMIES; i++ ) PelletHits[ i ] = 0;
    for( int p = 0; p < 7; p++ )
    {
        int target = FindTarget( (p - 3) * 0.045, 12.0 );
        if( target >= 0 ) PelletHits[ target ]++;
    }
    for( int i = 0; i < MAX_ENEMIES; i++ )
      if( PelletHits[ i ] > 0 && Enemies[ i ].alive ) DamageEnemy( i, PelletHits[ i ] );
}

// fast stream of visible bolts
void FireRifle()
{
    Cells--;
    FireTimer = 5;
    FlashTimer = 3;
    PlaySfx( SoundPlasmaRifle, 0.5, RandomPitch() );

    for( int i = 0; i < MAX_BOLTS; i++ )
    {
        if( Bolts[ i ].active ) continue;
        Bolts[ i ].x = PlayerX + DirX * 0.3;
        Bolts[ i ].y = PlayerY + DirY * 0.3;
        Bolts[ i ].dx = DirX * 0.32;
        Bolts[ i ].dy = DirY * 0.32;
        Bolts[ i ].life = 70;
        Bolts[ i ].active = 1;
        return;
    }
}

int WeaponAmmo( int w )
{
    if( w == WeaponShotgun ) return Shells;
    if( w == WeaponRifle )   return Cells;
    return Ammo;
}

int OwnsWeapon( int w )
{
    if( w == WeaponShotgun ) return HasShotgun;
    if( w == WeaponRifle )   return HasRifle;
    return 1;
}

// cycles to the next owned weapon; with needAmmo, skips empty ones
void NextWeapon( int needAmmo )
{
    int w = Weapon;
    for( int k = 0; k < 3; k++ )
    {
        w = (w + 1) % 3;
        if( !OwnsWeapon( w ) ) continue;
        if( needAmmo && WeaponAmmo( w ) <= 0 ) continue;
        if( w != Weapon )
        {
            Weapon = w;
            FireTimer = 10;
            PlaySfx( SoundEmptyClick, 0.6, 1.5 );
        }
        return;
    }
}

void UpdateBolts()
{
    for( int b = 0; b < MAX_BOLTS; b++ )
    {
        if( !Bolts[ b ].active ) continue;
        Bolts[ b ].life--;

        // two half steps so fast bolts can't skip past thin robots
        for( int step = 0; step < 2 && Bolts[ b ].active; step++ )
        {
            Bolts[ b ].x += Bolts[ b ].dx * 0.5;
            Bolts[ b ].y += Bolts[ b ].dy * 0.5;
            float x = Bolts[ b ].x;
            float y = Bolts[ b ].y;

            if( IsWall( x, y ) || Bolts[ b ].life <= 0 )
            {
                Bolts[ b ].active = 0;
                PlaySfx( SoundPlasmaHit, VolumeAt( x, y ) * 0.3, 1.6 );
                break;
            }

            for( int i = 0; i < MAX_ENEMIES; i++ )
            {
                if( Enemies[ i ].type < 0 || !Enemies[ i ].alive ) continue;
                float dx = Enemies[ i ].x - x;
                float dy = Enemies[ i ].y - y;
                float r = TypeHitRadius[ Enemies[ i ].type ];
                if( dx*dx + dy*dy < r * r )
                {
                    Bolts[ b ].active = 0;
                    DamageEnemy( i, 1 );
                    break;
                }
            }
        }
    }
}

// B button: open secret walls, flip the exit switch
void UseInFront()
{
    int fx = (int)(PlayerX + DirX * 1.0);
    int fy = (int)(PlayerY + DirY * 1.0);
    if( fx < 1 || fy < 1 || fx >= MAP_SIZE - 1 || fy >= MAP_SIZE - 1 )
    {
        // border walls can still hold the exit switch
        if( fx < 0 || fy < 0 || fx >= MAP_SIZE || fy >= MAP_SIZE ) return;
        if( Map[ fy ][ fx ] != TileExit ) return;
    }
    int t = Map[ fy ][ fx ];

    if( t >= TileSecretMin )
    {
        Map[ fy ][ fx ] = 0;
        SecretsFound++;
        PlaySfx( SoundSecret, 1.0, 1.0 );
        ShowMessage( "SECRET AREA FOUND!" );
    }
    else if( t == TileExit )
    {
        TotalKills += Kills;
        TotalEnemies += EnemiesTotal;
        TotalSecrets += SecretsFound;
        TotalSecretsAvailable += SecretsTotal;
        stop_all_channels();
        StateTimer = 0;

        // an exit on the final level finishes the game
        if( CurrentLevel >= LEVEL_COUNT - 1 )
        {
            PlaySfx( SoundVictory, 1.0, 1.0 );
            GameState = StateWon;
        }
        else
        {
            PlaySfx( SoundLevelComplete, 1.0, 1.0 );
            GameState = StateLevelDone;
        }
    }
}

int FacingExit()
{
    int fx = (int)(PlayerX + DirX * 1.0);
    int fy = (int)(PlayerY + DirY * 1.0);
    if( fx < 0 || fy < 0 || fx >= MAP_SIZE || fy >= MAP_SIZE ) return 0;
    return Map[ fy ][ fx ] == TileExit;
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

    float side = 0.8 * moveSpeed / 0.66;
    if( gamepad_button_l() > 0 ) { TryMove( -PlaneX * side, -PlaneY * side ); moving = 1; }
    if( gamepad_button_r() > 0 ) { TryMove(  PlaneX * side,  PlaneY * side ); moving = 1; }

    if( moving ) WalkPhase++;

    if( gamepad_button_y() == 1 ) ShowMap = !ShowMap;
    if( gamepad_button_b() == 1 ) UseInFront();
    if( GameState != StatePlaying ) return;

    if( FireTimer > 0 )  FireTimer--;
    if( FlashTimer > 0 ) FlashTimer--;
    if( gamepad_button_x() == 1 ) NextWeapon( 0 );

    if( gamepad_button_a() > 0 && FireTimer == 0 )
    {
        if( WeaponAmmo( Weapon ) > 0 )
        {
            if( Weapon == WeaponShotgun )    FireShotgun();
            else if( Weapon == WeaponRifle ) FireRifle();
            else                             FireBlaster();
        }
        else if( gamepad_button_a() == 1 )
        {
            // empty: click, then fall back to a weapon that still has ammo
            PlaySfx( SoundEmptyClick, 0.8, 1.0 );
            NextWeapon( 1 );
        }
    }

    // pickups
    for( int i = 0; i < MAX_ITEMS; i++ )
    {
        if( !Items[ i ].active ) continue;
        float dx = Items[ i ].x - PlayerX;
        float dy = Items[ i ].y - PlayerY;
        if( dx*dx + dy*dy > 0.36 ) continue;

        int type = Items[ i ].type;
        if( type == FrameMedkit )
        {
            if( Health >= 100 ) continue;
            Health = min( 100, Health + Items[ i ].amount );
            PlaySfx( SoundPickup, 0.8, 1.0 );
        }
        else if( type == FrameAmmo )
        {
            Ammo += Items[ i ].amount;
            PlaySfx( SoundPickup, 0.8, 1.0 );
        }
        else if( type == FrameShells )
        {
            Shells += Items[ i ].amount;
            PlaySfx( SoundPickup, 0.8, 0.85 );
        }
        else if( type == FrameCells )
        {
            Cells += Items[ i ].amount;
            PlaySfx( SoundPickup, 0.8, 1.15 );
        }
        else if( type == FrameShotgun )
        {
            Shells += Items[ i ].amount;
            if( !HasShotgun ) { HasShotgun = 1; Weapon = WeaponShotgun; ShowMessage( "SHOTGUN ACQUIRED  -  X TO SWITCH" ); }
            PlaySfx( SoundWeaponPickup, 1.0, 1.0 );
        }
        else if( type == FrameRifle )
        {
            Cells += Items[ i ].amount;
            if( !HasRifle ) { HasRifle = 1; Weapon = WeaponRifle; ShowMessage( "PLASMA RIFLE ACQUIRED  -  X TO SWITCH" ); }
            PlaySfx( SoundWeaponPickup, 1.0, 1.1 );
        }
        else
        {
            if( type == FrameRedKey ) { HasRedKey = 1;  ShowMessage( "RED KEYCARD ACQUIRED" ); }
            else                      { HasBlueKey = 1; ShowMessage( "BLUE KEYCARD ACQUIRED" ); }
            PlaySfx( SoundPickup, 1.0, 1.3 );
        }
        Items[ i ].active = 0;
        PickupFlash = 10;
    }

    if( DamageFlash > 0 )  DamageFlash--;
    if( PickupFlash > 0 )  PickupFlash--;
    if( LockedTimer > 0 )  LockedTimer--;
    if( MessageTimer > 0 ) MessageTimer--;
}

// ---------------------------------------------------------------------
//   DOORS
// ---------------------------------------------------------------------

void UpdateDoors()
{
    for( int i = 0; i < DoorCount; i++ )
    {
        if( Doors[ i ].opening )
        {
            if( Doors[ i ].open < 1.0 )
            {
                Doors[ i ].open += 0.03;
                if( Doors[ i ].open > 1.0 ) Doors[ i ].open = 1.0;
            }
            continue;
        }

        // doors open automatically when the player walks up to them
        float dx = Doors[ i ].x + 0.5 - PlayerX;
        float dy = Doors[ i ].y + 0.5 - PlayerY;
        if( dx*dx + dy*dy > 2.0 ) continue;

        int lock = Doors[ i ].lock;
        if( lock == 0 || (lock == 1 && HasRedKey) || (lock == 2 && HasBlueKey) )
        {
            Doors[ i ].opening = 1;
            PlaySfx( SoundDoorOpen, 0.8, 1.0 );
        }
        else if( LockedTimer == 0 )
        {
            LockedTimer = 100;
            PlaySfx( SoundLocked, 0.7, 1.0 );
            if( lock == 1 ) ShowMessage( "RED KEYCARD REQUIRED" );
            else            ShowMessage( "BLUE KEYCARD REQUIRED" );
        }
    }
}

// ---------------------------------------------------------------------
//   ENEMIES AND PROJECTILES
// ---------------------------------------------------------------------

void SpawnProjectile( float x, float y, float angle, float speed, int damage, int frame )
{
    for( int i = 0; i < MAX_PROJECTILES; i++ )
    {
        if( Projectiles[ i ].active ) continue;
        Projectiles[ i ].dx = cos( angle ) * speed;
        Projectiles[ i ].dy = sin( angle ) * speed;
        Projectiles[ i ].x = x + cos( angle ) * 0.4;
        Projectiles[ i ].y = y + sin( angle ) * 0.4;
        Projectiles[ i ].damage = damage;
        Projectiles[ i ].frame = frame;
        Projectiles[ i ].life = 400;
        Projectiles[ i ].active = 1;
        return;
    }
}

// instant-hit shot whose accuracy falls off with distance
void EnemyHitscan( float ex, float ey, float dist, int chance, int falloff, int damage, int damageRand, float pitch )
{
    PlaySfx( SoundEnemyShot, VolumeAt( ex, ey ) * 0.8, pitch * RandomPitch() );
    if( RandomInt( 100 ) < chance - (int)(dist * falloff) )
      DamagePlayer( damage + RandomInt( damageRand ) );
}

void EnemyAttack( int i, float dist )
{
    int type = Enemies[ i ].type;
    float ex = Enemies[ i ].x;
    float ey = Enemies[ i ].y;
    float angle = atan2( PlayerY - ey, PlayerX - ex );
    Enemies[ i ].attack_timer = 12;

    if( type == EnemySentry )
      EnemyHitscan( ex, ey, dist, 90, 8, 6, 6, 1.0 );

    else if( type == EnemyDrone )
      EnemyHitscan( ex, ey, dist, 85, 7, 3, 3, 1.5 );

    else if( type == EnemyHeavy )
    {
        SpawnProjectile( ex, ey, angle, 0.1, 14 + RandomInt( 5 ), FramePlasma );
        PlaySfx( SoundPlasmaFire, VolumeAt( ex, ey ), RandomPitch() );
    }

    else if( type == EnemyTurret )
      Enemies[ i ].burst = 3;

    else if( type == EnemyBoss )
    {
        int shots = 3;
        float speed = 0.085;
        if( BossEnraged ) { shots = 5; speed = 0.11; }
        float spread = 0.22;
        float first = angle - spread * (shots - 1) / 2.0;
        for( int s = 0; s < shots; s++ )
          SpawnProjectile( ex, ey, first + spread * s, speed, 12 + RandomInt( 5 ), FrameBossPlasma );
        PlaySfx( SoundPlasmaFire, 1.0, 0.75 );
    }
}

void UpdateEnemies()
{
    for( int i = 0; i < MAX_ENEMIES; i++ )
    {
        int type = Enemies[ i ].type;
        if( type < 0 || !Enemies[ i ].alive ) continue;

        Enemies[ i ].anim++;
        if( Enemies[ i ].hurt_timer > 0 )   Enemies[ i ].hurt_timer--;
        if( Enemies[ i ].attack_timer > 0 ) Enemies[ i ].attack_timer--;

        float dx = PlayerX - Enemies[ i ].x;
        float dy = PlayerY - Enemies[ i ].y;
        float dist = sqrt( dx*dx + dy*dy );

        // line of sight is expensive: refresh it every 4 frames, staggered
        if( ((FrameCount + i) % 4) == 0 )
          Enemies[ i ].sees = (dist < TypeRange[ type ]) && LineOfSight( Enemies[ i ].x, Enemies[ i ].y, PlayerX, PlayerY );

        if( !Enemies[ i ].sees ) continue;

        if( type == EnemyBoss && !BossActive )
        {
            BossActive = 1;
            PlaySfx( SoundBossRoar, 1.0, 1.0 );
            ShowMessage( "THE WARDEN AWAKENS" );
        }

        // move towards the player
        float speed = TypeSpeed[ type ];
        if( type == EnemyBoss && BossEnraged ) speed *= 1.6;
        int stunned = Enemies[ i ].hurt_timer > 0 && type != EnemyBoss;     // the boss shrugs hits off
        if( speed > 0.0 && dist > TypeStopDistance[ type ] && !stunned )
        {
            float r = TypeRadius[ type ];
            float mx = dx / dist * speed;
            float my = dy / dist * speed;
            if( CanStand( Enemies[ i ].x + mx, Enemies[ i ].y, r ) ) Enemies[ i ].x += mx;
            if( CanStand( Enemies[ i ].x, Enemies[ i ].y + my, r ) ) Enemies[ i ].y += my;
        }

        // turret bursts: one shot every 8 frames
        if( Enemies[ i ].burst > 0 && (Enemies[ i ].anim % 8) == 0 )
        {
            EnemyHitscan( Enemies[ i ].x, Enemies[ i ].y, dist, 80, 4, 4, 3, 1.25 );
            Enemies[ i ].burst--;
            Enemies[ i ].attack_timer = 6;
        }

        Enemies[ i ].cooldown--;
        if( Enemies[ i ].cooldown <= 0 )
        {
            int cd = TypeCooldown[ type ] + RandomInt( TypeCooldownRand[ type ] );
            if( type == EnemyBoss && BossEnraged ) cd = cd * 2 / 3;
            Enemies[ i ].cooldown = cd;
            EnemyAttack( i, dist );
        }
    }
}

void UpdateProjectiles()
{
    for( int i = 0; i < MAX_PROJECTILES; i++ )
    {
        if( !Projectiles[ i ].active ) continue;
        Projectiles[ i ].x += Projectiles[ i ].dx;
        Projectiles[ i ].y += Projectiles[ i ].dy;
        Projectiles[ i ].life--;

        float x = Projectiles[ i ].x;
        float y = Projectiles[ i ].y;

        if( IsWall( x, y ) || Projectiles[ i ].life <= 0 )
        {
            Projectiles[ i ].active = 0;
            PlaySfx( SoundPlasmaHit, VolumeAt( x, y ) * 0.6, RandomPitch() );
            continue;
        }

        float dx = x - PlayerX;
        float dy = y - PlayerY;
        if( dx*dx + dy*dy < 0.16 )
        {
            Projectiles[ i ].active = 0;
            PlaySfx( SoundPlasmaHit, 1.0, RandomPitch() );
            DamagePlayer( Projectiles[ i ].damage );
        }
    }
}

// ---------------------------------------------------------------------
//   RENDERING
// ---------------------------------------------------------------------

void DrawFloorAndCeiling()
{
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

        int side = 0;
        int tile = 0;
        float dist = 0.0;
        float wallX = 0.0;
        int texX = 0;

        while( true )
        {
            if( sideX < sideY ) { sideX += deltaX; mapX += stepX; side = 0; }
            else                { sideY += deltaY; mapY += stepY; side = 1; }
            tile = Map[ mapY ][ mapX ];
            if( tile == 0 ) continue;

            if( tile >= TileDoor && tile <= TileBlueDoor )
            {
                // doors are thin panels in the middle of their cell
                float open = Doors[ DoorAt[ mapY ][ mapX ] - 1 ].open;
                float cellStart;
                if( side == 0 ) { dist = sideX - deltaX * 0.5; wallX = PlayerY + dist * rayY; cellStart = mapY; }
                else            { dist = sideY - deltaY * 0.5; wallX = PlayerX + dist * rayX; cellStart = mapX; }

                // ray leaves the cell before reaching the panel: keep going
                if( wallX < cellStart || wallX >= cellStart + 1.0 ) continue;

                float frac = wallX - cellStart;
                if( frac < open ) continue;        // passes through the opened gap
                texX = (int)((frac - open) * 64.0);
                break;
            }

            // regular wall
            if( side == 0 ) { dist = sideX - deltaX; wallX = PlayerY + dist * rayY; }
            else            { dist = sideY - deltaY; wallX = PlayerX + dist * rayX; }
            wallX -= floor( wallX );
            texX = (int)(wallX * 64.0);
            if( side == 0 && rayX < 0.0 ) texX = 63 - texX;
            if( side == 1 && rayY > 0.0 ) texX = 63 - texX;
            break;
        }

        if( texX > 63 ) texX = 63;
        if( texX < 0 )  texX = 0;
        if( dist < 0.05 ) dist = 0.05;
        ZBuffer[ c ] = dist;

        float lineH = VIEW_H / dist;

        int light = 255 - (int)(dist * 14.0);
        if( light < 45 ) light = 45;
        if( side == 1 ) light = light * 3 / 4;

        int texIndex;
        if( tile >= TileSecretMin )
        {
            // secret walls look almost identical: a faint warm tint is the only clue
            texIndex = tile - TileSecretMin;
            set_multiply_color( make_color_rgb( light, light * 15 / 16, light * 14 / 16 ) );
        }
        else
        {
            texIndex = tile - 1;
            set_multiply_color( make_color_rgb( light, light, light ) );
        }

        select_region( RegionWallFirst + texIndex * 64 + texX );
        set_drawing_scale( COLUMN_W, lineH / 64.0 );
        draw_region_zoomed_at( c * COLUMN_W, HORIZON - (int)(lineH / 2.0) );
    }
}

// draws one billboard sprite, clipped against the wall z-buffer;
// texW is the frame width in texels (64, or 128 for the boss)
void DrawSprite( float wx, float wy, int firstRegion, int texW, float scale, float lift, int fullbright )
{
    float invDet = 1.0 / (PlaneX * DirY - DirX * PlaneY);
    float sx = wx - PlayerX;
    float sy = wy - PlayerY;
    float tx = invDet * (DirY * sx - DirX * sy);
    float ty = invDet * (-PlaneY * sx + PlaneX * sy);
    if( ty < 0.15 ) return;

    float screenX = 320.0 * (1.0 + tx / ty);
    float fullH = VIEW_H / ty;
    float size = fullH * scale;
    float left = screenX - size / 2.0;
    int   top  = HORIZON + (int)(fullH / 2.0 - size - lift * fullH);

    int c0 = (int)(left / COLUMN_W);
    int c1 = (int)((left + size) / COLUMN_W);
    if( c0 < 0 ) c0 = 0;
    if( c1 > COLUMNS - 1 ) c1 = COLUMNS - 1;
    if( c0 > c1 ) return;

    if( fullbright ) set_multiply_color( color_white );
    else
    {
        int light = 255 - (int)(ty * 14.0);
        if( light < 60 ) light = 60;
        set_multiply_color( make_color_rgb( light, light, light ) );
    }
    set_drawing_scale( COLUMN_W, size / texW );

    for( int c = c0; c <= c1; c++ )
    {
        if( ty >= ZBuffer[ c ] ) continue;
        int texX = (int)(((c * COLUMN_W + COLUMN_W / 2) - left) * texW / size);
        if( texX < 0 || texX >= texW ) continue;
        select_region( firstRegion + texX );
        draw_region_zoomed_at( c * COLUMN_W, top );
    }
}

int EnemyFrame( int i )
{
    int type = Enemies[ i ].type;
    int base = TypeFrameBase[ type ];

    if( type == EnemyTurret || type == EnemyBoss )
    {
        if( !Enemies[ i ].alive )               return base + 3;
        if( Enemies[ i ].hurt_timer > 0 )       return base + 2;
        if( Enemies[ i ].attack_timer > 0 )     return base + 1;
        return base;
    }

    if( !Enemies[ i ].alive )                   return base + 4;
    if( Enemies[ i ].hurt_timer > 0 )           return base + 3;
    if( Enemies[ i ].attack_timer > 0 )         return base + 2;
    int period = 15;
    if( type == EnemyDrone ) period = 5;        // spinning rotor
    return base + (Enemies[ i ].anim / period) % 2;
}

int SpriteCount;

void AddSprite( int id, float x, float y )
{
    float dx = x - PlayerX;
    float dy = y - PlayerY;
    float d = dx*dx + dy*dy;
    if( d > 400.0 ) return;                     // too far away to matter
    if( SpriteCount >= MAX_SPRITES ) return;
    DrawOrder[ SpriteCount ] = id;
    SortDepth[ SpriteCount ] = d;
    SpriteCount++;
}

void DrawSprites()
{
    SpriteCount = 0;
    for( int i = 0; i < MAX_ENEMIES; i++ )
      if( Enemies[ i ].type >= 0 ) AddSprite( i, Enemies[ i ].x, Enemies[ i ].y );
    for( int i = 0; i < MAX_ITEMS; i++ )
      if( Items[ i ].active ) AddSprite( 100 + i, Items[ i ].x, Items[ i ].y );
    for( int i = 0; i < MAX_PROJECTILES; i++ )
      if( Projectiles[ i ].active ) AddSprite( 200 + i, Projectiles[ i ].x, Projectiles[ i ].y );
    for( int i = 0; i < MAX_BOLTS; i++ )
      if( Bolts[ i ].active ) AddSprite( 300 + i, Bolts[ i ].x, Bolts[ i ].y );

    // insertion sort, far to near
    for( int i = 1; i < SpriteCount; i++ )
    {
        int j = i;
        while( j > 0 && SortDepth[ j - 1 ] < SortDepth[ j ] )
        {
            float td = SortDepth[ j ]; SortDepth[ j ] = SortDepth[ j - 1 ]; SortDepth[ j - 1 ] = td;
            int to = DrawOrder[ j ];   DrawOrder[ j ] = DrawOrder[ j - 1 ]; DrawOrder[ j - 1 ] = to;
            j--;
        }
    }

    for( int k = 0; k < SpriteCount; k++ )
    {
        int id = DrawOrder[ k ];
        if( id < 100 )
        {
            int type = Enemies[ id ].type;
            int frame = EnemyFrame( id );
            if( type == EnemyBoss )
              DrawSprite( Enemies[ id ].x, Enemies[ id ].y, RegionBossFirst + frame * 128, 128, TypeScale[ type ], 0.0, 0 );
            else
            {
                float lift = 0.0;
                if( type == EnemyDrone && Enemies[ id ].alive )
                  lift = 0.3 + 0.04 * sin( Enemies[ id ].anim * 0.1 );
                DrawSprite( Enemies[ id ].x, Enemies[ id ].y, RegionSpriteFirst + frame * 64, 64, TypeScale[ type ], lift, 0 );
            }
        }
        else if( id < 200 )
        {
            int it = id - 100;
            int type = Items[ it ].type;
            float lift = 0.0;
            int bright = 0;
            if( type == FrameRedKey || type == FrameBlueKey )
            {
                lift = 0.04 + 0.04 * sin( FrameCount * 0.08 );     // keys bob and glow
                bright = 1;
            }
            DrawSprite( Items[ it ].x, Items[ it ].y, RegionSpriteFirst + type * 64, 64, 0.5, lift, bright );
        }
        else if( id < 300 )
        {
            int p = id - 200;
            DrawSprite( Projectiles[ p ].x, Projectiles[ p ].y, RegionSpriteFirst + Projectiles[ p ].frame * 64, 64, 0.3, 0.32, 1 );
        }
        else
        {
            int b = id - 300;
            DrawSprite( Bolts[ b ].x, Bolts[ b ].y, RegionSpriteFirst + FrameBolt * 64, 64, 0.2, 0.36, 1 );
        }
    }
}

void DrawWeapon()
{
    float bob = sin( WalkPhase * 0.18 );
    int gx = 320 + (int)(bob * 14.0);
    int gy = 362 + (int)(fabs( bob ) * 10.0);
    int firing = FlashTimer > 0;
    if( firing ) gy += 10;
    if( firing && Weapon == WeaponShotgun ) gy += 8;     // heavier kick

    set_multiply_color( color_white );
    int region = RegionGunIdle;
    if( Weapon == WeaponShotgun ) region = RegionShotgunIdle;
    if( Weapon == WeaponRifle )   region = RegionRifleIdle;
    if( firing ) region++;                               // fire frame follows idle
    select_region( region );
    set_drawing_scale( 2.0, 2.0 );
    draw_region_zoomed_at( gx, gy );
}

void DrawMinimap()
{
    int cell = 4;
    int ox = screen_width - MAP_SIZE * cell - 10;
    int oy = 10;
    DrawRect( ox - 2, oy - 2, MAP_SIZE * cell + 4, MAP_SIZE * cell + 4, make_color_rgba( 0, 0, 0, 170 ) );

    int wallColor = make_color_rgba( 150, 150, 170, 210 );
    for( int y = 0; y < MAP_SIZE; y++ )
    {
        // merge runs of wall cells into one rectangle each
        int run = -1;
        for( int x = 0; x <= MAP_SIZE; x++ )
        {
            int solid = 0;
            if( x < MAP_SIZE )
            {
                int t = Map[ y ][ x ];
                solid = (t >= 1 && t <= TileExit) || t >= TileSecretMin;
            }
            if( solid && run < 0 ) run = x;
            if( !solid && run >= 0 )
            {
                DrawRect( ox + run * cell, oy + y * cell, (x - run) * cell, cell, wallColor );
                run = -1;
            }
        }
    }

    for( int i = 0; i < DoorCount; i++ )
    {
        if( Doors[ i ].open >= 1.0 ) continue;
        int col = make_color_rgb( 230, 200, 60 );
        if( Doors[ i ].lock == 1 ) col = make_color_rgb( 230, 50, 50 );
        if( Doors[ i ].lock == 2 ) col = make_color_rgb( 70, 120, 255 );
        DrawRect( ox + Doors[ i ].x * cell, oy + Doors[ i ].y * cell, cell, cell, col );
    }

    for( int i = 0; i < MAX_ENEMIES; i++ )
      if( Enemies[ i ].type >= 0 && Enemies[ i ].alive )
        DrawRect( ox + (int)(Enemies[ i ].x * cell) - 1, oy + (int)(Enemies[ i ].y * cell) - 1, 3, 3, color_red );

    int pxm = ox + (int)(PlayerX * cell);
    int pym = oy + (int)(PlayerY * cell);
    DrawRect( pxm - 2, pym - 2, 4, 4, color_green );
    DrawRect( pxm + (int)(DirX * 5.0) - 1, pym + (int)(DirY * 5.0) - 1, 2, 2, color_yellow );
}

void DrawHUD()
{
    // crosshair
    int ch = make_color_rgba( 255, 255, 255, 180 );
    DrawRect( 318, 170, 4, 7, ch );
    DrawRect( 318, 183, 4, 7, ch );
    DrawRect( 308, 178, 7, 4, ch );
    DrawRect( 325, 178, 7, 4, ch );

    if( DamageFlash > 0 )
      DrawRect( 0, 0, screen_width, screen_height, make_color_rgba( 255, 0, 0, DamageFlash * 8 ) );
    if( PickupFlash > 0 )
      DrawRect( 0, 0, screen_width, screen_height, make_color_rgba( 255, 255, 120, PickupFlash * 5 ) );
    if( BossDeathTimer > 0 && (BossDeathTimer / 6) % 2 )
      DrawRect( 0, 0, screen_width, screen_height, make_color_rgba( 255, 255, 255, 60 ) );

    // health
    DrawRect( 10, 326, 164, 24, make_color_rgba( 0, 0, 0, 170 ) );
    int hw = max( 0, Health ) * 160 / 100;
    int hc = make_color_rgb( 30, 150, 60 );
    if( Health < 60 ) hc = make_color_rgb( 180, 140, 20 );
    if( Health < 30 ) hc = make_color_rgb( 190, 30, 30 );
    DrawRect( 12, 328, hw, 20, hc );
    set_multiply_color( color_white );
    PrintNumber( 20, 328, "HP ", max( 0, Health ) );

    // ammo + keycards
    DrawRect( 466, 326, 164, 24, make_color_rgba( 0, 0, 0, 170 ) );
    set_multiply_color( color_white );
    if( Weapon == WeaponShotgun )    PrintNumber( 476, 328, "SHELLS ", Shells );
    else if( Weapon == WeaponRifle ) PrintNumber( 476, 328, "CELLS ", Cells );
    else                             PrintNumber( 476, 328, "AMMO ", Ammo );
    set_multiply_color( make_color_rgb( 150, 160, 175 ) );
    if( Weapon == WeaponShotgun )    print_at( 470, 304, "SHOTGUN" );
    else if( Weapon == WeaponRifle ) print_at( 470, 304, "PLASMA RIFLE" );
    else                             print_at( 470, 304, "BLASTER" );
    if( HasRedKey )  { DrawRect( 588, 329, 12, 18, make_color_rgb( 220, 40, 40 ) );  DrawRect( 591, 332, 6, 4, color_white ); }
    if( HasBlueKey ) { DrawRect( 608, 329, 12, 18, make_color_rgb( 50, 110, 240 ) ); DrawRect( 611, 332, 6, 4, color_white ); }

    set_multiply_color( color_white );
    PrintNumber( 10, 10, "ROBOTS LEFT ", EnemiesTotal - Kills );

    // boss health bar
    if( BossActive && BossIndex >= 0 && Enemies[ BossIndex ].alive )
    {
        DrawRect( 168, 38, 304, 14, make_color_rgba( 0, 0, 0, 190 ) );
        int bw = Enemies[ BossIndex ].hp * 300 / TypeHP[ EnemyBoss ];
        DrawRect( 170, 40, bw, 10, make_color_rgb( 200, 40, 220 ) );
        set_multiply_color( make_color_rgb( 230, 160, 255 ) );
        PrintCentered( 14, "THE WARDEN" );
    }

    if( MessageTimer > 0 )
    {
        set_multiply_color( color_yellow );
        PrintCentered( 70, MessageText );
    }
    else if( WeaponAmmo( Weapon ) == 0 )
    {
        set_multiply_color( color_orange );
        if( Ammo > 0 || (HasShotgun && Shells > 0) || (HasRifle && Cells > 0) )
          PrintCentered( 220, "EMPTY - PRESS X TO SWITCH WEAPON" );
        else
          PrintCentered( 220, "OUT OF AMMO - FIND A CRATE" );
    }

    if( FacingExit() )
    {
        DrawRect( 230, 262, 180, 26, make_color_rgba( 0, 0, 0, 180 ) );
        set_multiply_color( make_color_rgb( 100, 255, 130 ) );
        PrintCentered( 265, "PRESS B TO EXIT" );
    }
    set_multiply_color( color_white );
}

void DrawWorld()
{
    DrawFloorAndCeiling();
    DrawWalls();
    DrawSprites();
}

void DrawPanel( int y, int h, int color )
{
    DrawRect( 0, y, screen_width, h, color );
    set_multiply_color( color_white );
}

void PrintTime( int y, int frames )
{
    int seconds = frames / 60;
    strcpy( TextBuffer, "TIME " );
    itoa( seconds / 60, NumberBuffer, 10 );
    strcat( TextBuffer, NumberBuffer );
    strcat( TextBuffer, ":" );
    if( (seconds % 60) < 10 ) strcat( TextBuffer, "0" );
    itoa( seconds % 60, NumberBuffer, 10 );
    strcat( TextBuffer, NumberBuffer );
    PrintCentered( y, TextBuffer );
}

// ---------------------------------------------------------------------
//   MAIN
// ---------------------------------------------------------------------

void main()
{
    DefineRegions();
    NewGame();
    GameState = StateTitle;
    StateTimer = 0;
    ShowMap = 0;

    while( true )
    {
        select_gamepad( 0 );
        select_texture( TextureAtlas );
        StateTimer++;
        FrameCount++;

        if( GameState == StateTitle )
        {
            RotatePlayer( 0.004 );
            DrawWorld();
            DrawPanel( 80, 190, make_color_rgba( 0, 0, 0, 170 ) );
            set_multiply_color( color_orange );
            PrintCentered( 96, "S E N T R Y   S W E E P" );
            set_multiply_color( color_white );
            strcpy( TextBuffer, "Fight through " );
            itoa( LEVEL_COUNT, NumberBuffer, 10 );
            strcat( TextBuffer, NumberBuffer );
            strcat( TextBuffer, " levels of hostile robots" );
            PrintCentered( 136, TextBuffer );
            PrintCentered( 166, "D-PAD move/turn   L/R strafe   A fire" );
            PrintCentered( 190, "X switch weapon   B use/exit   Y map" );
            if( (StateTimer / 30) % 2 ) PrintCentered( 230, "PRESS START" );

            if( gamepad_button_start() == 1 )
            {
                NewGame();
                PlaySfx( SoundPickup, 0.8, 0.8 );
                GameState = StateIntro;
                StateTimer = 0;
            }
        }

        else if( GameState == StateIntro )
        {
            DrawWorld();
            DrawPanel( 120, 110, make_color_rgba( 0, 0, 0, 190 ) );
            set_multiply_color( color_orange );
            PrintNumber( 285, 140, "LEVEL ", CurrentLevel + 1 );
            set_multiply_color( color_white );
            PrintCentered( 175, LevelName );

            if( StateTimer > 150 || (StateTimer > 20 && gamepad_button_start() == 1) )
            {
                GameState = StatePlaying;
                StateTimer = 0;
            }
        }

        else if( GameState == StatePlaying )
        {
            LevelFrames++;
            UpdatePlayer();
            if( GameState == StatePlaying )
            {
                UpdateDoors();
                UpdateEnemies();
                UpdateProjectiles();
                UpdateBolts();
                DrawWorld();
                DrawWeapon();
                if( ShowMap ) DrawMinimap();
                DrawHUD();
            }
            else DrawWorld();     // just used the exit switch

            // boss death sequence: a few seconds of explosions, then victory
            if( BossDeathTimer > 0 )
            {
                BossDeathTimer--;
                if( (BossDeathTimer % 30) == 0 ) PlaySfx( SoundPlasmaHit, 1.0, 0.6 + RandomInt( 40 ) / 100.0 );
                if( BossDeathTimer == 0 )
                {
                    TotalKills += Kills;
                    TotalEnemies += EnemiesTotal;
                    TotalSecrets += SecretsFound;
                    TotalSecretsAvailable += SecretsTotal;
                    stop_all_channels();
                    PlaySfx( SoundVictory, 1.0, 1.0 );
                    GameState = StateWon;
                    StateTimer = 0;
                }
            }

            if( GameState == StatePlaying && Health <= 0 )
            {
                stop_all_channels();
                PlaySfx( SoundGameOver, 1.0, 1.0 );
                GameState = StateDead;
                StateTimer = 0;
            }
        }

        else if( GameState == StateLevelDone )
        {
            DrawWorld();
            DrawPanel( 70, 220, make_color_rgba( 0, 0, 0, 190 ) );
            set_multiply_color( make_color_rgb( 100, 255, 130 ) );
            PrintCentered( 90, "LEVEL COMPLETE" );
            set_multiply_color( color_white );
            PrintCentered( 120, LevelName );
            PrintRatio( 160, "ROBOTS ", Kills, EnemiesTotal );
            PrintRatio( 185, "SECRETS ", SecretsFound, SecretsTotal );
            PrintTime( 210, LevelFrames );
            if( StateTimer > 60 && (StateTimer / 30) % 2 ) PrintCentered( 250, "PRESS START" );

            if( StateTimer > 60 && gamepad_button_start() == 1 )
            {
                CurrentLevel++;
                LoadLevel( CurrentLevel );
                GameState = StateIntro;
                StateTimer = 0;
            }
        }

        else if( GameState == StateDead )
        {
            DrawWorld();
            DrawRect( 0, 0, screen_width, screen_height, make_color_rgba( 120, 0, 0, 170 ) );
            set_multiply_color( color_white );
            PrintCentered( 140, "YOU WERE DESTROYED" );
            PrintCentered( 175, "Retry this level with full health" );
            if( StateTimer > 60 && (StateTimer / 30) % 2 ) PrintCentered( 230, "PRESS START" );

            if( StateTimer > 60 && gamepad_button_start() == 1 )
            {
                Health = 100;
                Ammo = max( LevelStartAmmo, 30 );
                Shells = LevelStartShells;
                Cells = LevelStartCells;
                HasShotgun = LevelStartShotgun;
                HasRifle = LevelStartRifle;
                if( !OwnsWeapon( Weapon ) ) Weapon = WeaponBlaster;
                LoadLevel( CurrentLevel );
                GameState = StateIntro;
                StateTimer = 0;
            }
        }

        else // StateWon
        {
            DrawWorld();
            DrawPanel( 60, 240, make_color_rgba( 0, 0, 0, 190 ) );
            set_multiply_color( color_orange );
            PrintCentered( 80, "THE WARDEN IS DESTROYED" );
            set_multiply_color( color_white );
            PrintCentered( 110, "The Core has gone quiet. Sector cleared!" );
            PrintRatio( 160, "TOTAL ROBOTS ", TotalKills, TotalEnemies );
            PrintRatio( 185, "TOTAL SECRETS ", TotalSecrets, TotalSecretsAvailable );
            if( StateTimer > 90 && (StateTimer / 30) % 2 ) PrintCentered( 250, "PRESS START" );

            if( StateTimer > 90 && gamepad_button_start() == 1 )
            {
                NewGame();
                GameState = StateTitle;
                StateTimer = 0;
            }
        }

        end_frame();
    }
}
