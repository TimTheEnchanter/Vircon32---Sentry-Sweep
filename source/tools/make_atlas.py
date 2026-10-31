#!/usr/bin/env python3
# Generates Atlas.png for Sentry Sweep. Everything is procedural pixel art.
#
# Atlas layout (1024 x 512):
#   y   0..63  : 8 wall textures, 64x64 each, x = 0..511
#                1 brick, 2 stone, 3 tech, 4 moss, 5 exit, 6 door, 7 red door, 8 blue door
#   x 600..603 : 4x4 white block (used to draw solid rectangles)
#   y  64..127 : sprite frames 0..15  (64x64 each)
#   y 128..191 : sprite frames 16..31
#        0-4  sentry walkA, walkB, attack, hurt, dead
#        5 medkit, 6 ammo, 7 red key, 8 blue key, 9 plasma, 10 boss plasma
#        11-15 drone walkA, walkB, attack, hurt, dead
#        16-20 heavy walkA, walkB, attack, hurt, dead
#        21-24 turret idle, attack, hurt, dead
#   y 192..319 : boss frames (128x128): idle, attack, hurt, dead
#   y 320..415 : gun 96x96 at x=0 (idle) and x=96 (firing)
import random, sys
from PIL import Image, ImageDraw

random.seed(32)
W, H = 1024, 512
img = Image.new("RGBA", (W, H), (0, 0, 0, 0))
px = img.load()
D = ImageDraw.Draw(img)

def clamp(v): return max(0, min(255, int(v)))
def put(x, y, c, a=255): px[x, y] = (clamp(c[0]), clamp(c[1]), clamp(c[2]), a)
def jitter(c, n):
    d = random.randint(-n, n)
    return (c[0] + d, c[1] + d, c[2] + d)
def A(c, a=255): return tuple(int(v) for v in c) + (a,)

# ======================= walls =======================
def wall_brick(ox):
    for y in range(64):
        row = y // 8; off = 8 if row % 2 else 0
        for x in range(64):
            if (y % 8 == 7) or ((x + off) % 16 == 15):
                put(ox + x, y, jitter((70, 62, 55), 6))
            else:
                b = ((x + off) // 16 + row * 3) % 5
                c = jitter((150 + b * 6, 62 + b * 3, 45), 12)
                if y % 8 == 0: c = (c[0] + 25, c[1] + 15, c[2] + 10)
                put(ox + x, y, c)

def wall_stone(ox):
    for y in range(64):
        for x in range(64): put(ox + x, y, jitter((108, 108, 112), 14))
    for (a, b, c, e) in [(0,0,30,20),(31,0,63,13),(31,14,63,30),(0,21,20,42),(21,21,46,42),
                         (47,31,63,50),(0,43,30,63),(31,43,46,63),(47,51,63,63)]:
        D.rectangle([ox+a, b, ox+c, e], outline=(55,55,60,255))
        D.line([ox+a+1, b+1, ox+c-1, b+1], fill=(150,150,155,255))
        D.line([ox+a+1, b+1, ox+a+1, e-1], fill=(140,140,145,255))

def wall_tech(ox):
    for y in range(64):
        for x in range(64):
            c = jitter((62, 78, 104), 5)
            if x in (0, 31, 32, 63) or y in (0, 63): c = (32, 40, 56)
            if x in (1, 33) or y == 1: c = (98, 118, 150)
            put(ox + x, y, c)
    for (rx, ry) in [(4,4),(27,4),(36,4),(59,4),(4,59),(27,59),(36,59),(59,59)]:
        put(ox+rx, ry, (170,180,200)); put(ox+rx+1, ry+1, (30,36,50))
    for y in range(26, 38):
        for x in range(8, 56):
            if x in (31, 32): continue
            g = 230 - abs(y - 32) * 14
            put(ox + x, y, (g * 0.3, g * 0.9, g))
    for y in range(44, 54):
        if y % 3 == 0:
            for x in range(10, 54):
                if x not in (31, 32): put(ox + x, y, (24, 30, 42))

def wall_moss(ox):
    wall_stone(ox)
    for y in range(64):
        for x in range(64):
            r, g, b, a = px[ox + x, y]
            if (64 - y) / 64.0 * 0.9 + random.random() * 0.35 > 0.75:
                px[ox + x, y] = (clamp(r*0.45), clamp(g*0.85 + 25), clamp(b*0.4), 255)
    for i in range(10):
        x = random.randint(0, 63); L = random.randint(10, 40)
        for y in range(L): put(ox + x, y, jitter((40, 110, 40), 15))

def wall_exit(ox):
    wall_tech(ox)
    D.rectangle([ox+6, 6, ox+57, 57], fill=(20, 26, 30, 255), outline=(90, 100, 110, 255))
    D.rectangle([ox+10, 10, ox+53, 24], fill=(10, 40, 16, 255))
    # pixel letters "EXIT"
    glyphs = {
        "E": ["111","100","110","100","111"], "X": ["101","101","010","101","101"],
        "I": ["111","010","010","010","111"], "T": ["111","010","010","010","010"]}
    for i, ch in enumerate("EXIT"):
        for gy, row in enumerate(glyphs[ch]):
            for gx, bit in enumerate(row):
                if bit == "1":
                    D.rectangle([ox+13+i*10+gx*2, 12+gy*2, ox+14+i*10+gx*2, 13+gy*2], fill=(80, 255, 110, 255))
    # lever switch
    D.rectangle([ox+26, 32, ox+37, 52], fill=(50, 54, 60, 255), outline=(120,120,130,255))
    D.rectangle([ox+29, 34, ox+34, 42], fill=(60, 220, 90, 255))
    D.rectangle([ox+29, 44, ox+34, 50], fill=(30, 34, 38, 255))

def wall_door(ox, band=None):
    for y in range(64):
        for x in range(64):
            c = jitter((118, 122, 130), 4)
            if x % 8 == 0: c = (84, 88, 96)
            if x % 8 == 1: c = (150, 154, 162)
            put(ox + x, y, c)
    for y in range(54, 64):           # hazard stripes at the bottom
        for x in range(64):
            put(ox + x, y, (220, 180, 30) if ((x + y) // 5) % 2 == 0 else (30, 30, 30))
    D.rectangle([ox, 0, ox+63, 3], fill=(60, 62, 70, 255))
    D.rectangle([ox+46, 26, ox+53, 36], fill=(60, 62, 70, 255))     # handle
    if band:
        dark = tuple(v // 2 for v in band)
        D.rectangle([ox, 14, ox+63, 22], fill=A(band))
        D.ellipse([ox+20, 28, ox+40, 48], fill=A(dark), outline=A(band))
        D.rectangle([ox+27, 35, ox+33, 41], fill=A(band))

wall_brick(0); wall_stone(64); wall_tech(128); wall_moss(192)
wall_exit(256); wall_door(320); wall_door(384, (220, 40, 40)); wall_door(448, (50, 110, 240))
for y in range(4):
    for x in range(600, 604): put(x, y, (255, 255, 255))

# ======================= 64px sprites =======================
def frame(f):
    return (f % 16) * 64, 64 + (f // 16) * 64

def sentry(f, legs, eye, flash=False, tint=None):
    ox, oy = frame(f)
    body = (120, 40, 140) if tint is None else tint
    dark = tuple(int(c * 0.55) for c in body)
    light = tuple(min(255, int(c * 1.4) + 30) for c in body)
    la, lb = legs
    D.rectangle([ox+18, oy+44, ox+24, oy+60+la], fill=A(dark))
    D.rectangle([ox+40, oy+44, ox+46, oy+60+lb], fill=A(dark))
    D.rectangle([ox+14, oy+59+la, ox+26, oy+63], fill=(40,40,45,255))
    D.rectangle([ox+38, oy+59+lb, ox+50, oy+63], fill=(40,40,45,255))
    D.ellipse([ox+8, oy+10, ox+56, oy+50], fill=A(body), outline=A(dark))
    D.ellipse([ox+14, oy+13, ox+40, oy+28], fill=A(light))
    D.ellipse([ox+12, oy+12, ox+52, oy+48], outline=A(dark))
    D.rectangle([ox+2, oy+28, ox+10, oy+40], fill=(70,70,78,255))
    D.rectangle([ox+54, oy+28, ox+62, oy+40], fill=(70,70,78,255))
    D.ellipse([ox+22, oy+20, ox+42, oy+40], fill=(20,10,20,255))
    D.ellipse([ox+25, oy+23, ox+39, oy+37], fill=A(eye))
    D.ellipse([ox+28, oy+25, ox+33, oy+30], fill=(255,240,220,255))
    if flash:
        for (cx, cy) in [(6, 34), (58, 34)]:
            D.ellipse([ox+cx-6, oy+cy-6, ox+cx+6, oy+cy+6], fill=(255,220,80,255))
            D.ellipse([ox+cx-3, oy+cy-3, ox+cx+3, oy+cy+3], fill=(255,255,230,255))

def wreck(f, main, accent):
    ox, oy = frame(f)
    D.ellipse([ox+6, oy+48, ox+58, oy+63], fill=A(tuple(v//2 for v in main)))
    D.polygon([(ox+14,oy+52),(ox+24,oy+40),(ox+34,oy+50)], fill=A(main))
    D.polygon([(ox+32,oy+54),(ox+46,oy+42),(ox+54,oy+55)], fill=(80,80,90,255))
    D.ellipse([ox+26, oy+50, ox+34, oy+58], fill=A(accent))
    D.line([ox+20, oy+44, ox+16, oy+36], fill=(70,70,78,255), width=3)

sentry(0, (0, -3), (230, 40, 40))
sentry(1, (-3, 0), (230, 40, 40))
sentry(2, (0, 0), (255, 140, 60), flash=True)
sentry(3, (0, 0), (255, 255, 255), tint=(240, 200, 230))
wreck(4, (90, 30, 105), (80, 20, 20))

# medkit
ox, oy = frame(5)
D.rectangle([ox+16, oy+40, ox+48, oy+63], fill=(235,235,235,255), outline=(120,120,120,255))
D.rectangle([ox+16, oy+40, ox+48, oy+44], fill=(200,200,200,255))
D.rectangle([ox+29, oy+46, ox+35, oy+60], fill=(210,30,30,255))
D.rectangle([ox+24, oy+50, ox+40, oy+56], fill=(210,30,30,255))
# ammo
ox, oy = frame(6)
D.rectangle([ox+14, oy+46, ox+50, oy+63], fill=(90,100,50,255), outline=(50,55,25,255))
for i in range(5):
    x = ox + 17 + i * 7
    D.rectangle([x, oy+36, x+4, oy+46], fill=(220,180,60,255))
    D.rectangle([x, oy+34, x+4, oy+37], fill=(180,110,40,255))
D.rectangle([ox+22, oy+52, ox+42, oy+57], fill=(200,190,120,255))

def keycard(f, col):
    ox, oy = frame(f)
    dark = tuple(v // 2 for v in col)
    D.polygon([(ox+12,oy+50),(ox+44,oy+38),(ox+52,oy+52),(ox+20,oy+63)], fill=A(col), outline=A(dark))
    D.polygon([(ox+20,oy+52),(ox+30,oy+48),(ox+33,oy+53),(ox+23,oy+57)], fill=(230,200,90,255))
    D.line([ox+36, oy+44, ox+46, oy+50], fill=(255,255,255,255), width=2)
    # little glow above it so it reads at a distance
    D.ellipse([ox+26, oy+22, ox+38, oy+34], fill=A(col, 140))
    D.ellipse([ox+29, oy+25, ox+35, oy+31], fill=(255,255,255,220))
keycard(7, (220, 40, 40)); keycard(8, (50, 110, 240))

def plasma(f, outer, mid):
    ox, oy = frame(f)
    D.ellipse([ox+8, oy+8, ox+56, oy+56], fill=A(outer, 110))
    D.ellipse([ox+16, oy+16, ox+48, oy+48], fill=A(mid, 230))
    D.ellipse([ox+24, oy+24, ox+40, oy+40], fill=(255,255,235,255))
plasma(9, (255, 120, 20), (255, 190, 60))
plasma(10, (190, 40, 255), (230, 140, 255))

def drone(f, rotor, eye, flash=False, tint=None):
    ox, oy = frame(f)
    body = (40, 160, 170) if tint is None else tint
    dark = tuple(int(v * 0.5) for v in body)
    # rotor
    if rotor == 0: D.rectangle([ox+8, oy+10, ox+56, oy+13], fill=(60,60,70,200))
    else:          D.rectangle([ox+20, oy+9, ox+44, oy+14], fill=(60,60,70,200))
    D.rectangle([ox+30, oy+12, ox+34, oy+22], fill=(80,80,90,255))
    # saucer body
    D.ellipse([ox+4, oy+24, ox+60, oy+46], fill=A(body), outline=A(dark))
    D.ellipse([ox+18, oy+16, ox+46, oy+36], fill=A(tuple(min(255, v + 60) for v in body)), outline=A(dark))
    D.ellipse([ox+26, oy+22, ox+38, oy+34], fill=(15,15,20,255))
    D.ellipse([ox+28, oy+24, ox+36, oy+32], fill=A(eye))
    # landing struts
    D.line([ox+16, oy+44, ox+12, oy+54], fill=A(dark), width=3)
    D.line([ox+48, oy+44, ox+52, oy+54], fill=A(dark), width=3)
    if flash:
        D.ellipse([ox+24, oy+42, ox+40, oy+58], fill=(255,240,120,255))
        D.ellipse([ox+28, oy+46, ox+36, oy+54], fill=(255,255,240,255))
drone(11, 0, (255, 220, 40))
drone(12, 1, (255, 220, 40))
drone(13, 0, (255, 255, 200), flash=True)
drone(14, 1, (255, 255, 255), tint=(220, 245, 250))
wreck(15, (30, 120, 130), (200, 180, 40))

def heavy(f, tread, glow=False, tint=None):
    ox, oy = frame(f)
    body = (170, 110, 40) if tint is None else tint
    dark = tuple(int(v * 0.5) for v in body)
    light = tuple(min(255, int(v * 1.3) + 20) for v in body)
    # treads
    D.rectangle([ox+4, oy+50, ox+60, oy+63], fill=(40,40,44,255))
    for i in range(8):
        x = ox + 6 + ((i * 7 + tread) % 54)
        D.rectangle([x, oy+52, x+3, oy+61], fill=(90,90,96,255))
    # hull
    D.polygon([(ox+8,oy+50),(ox+12,oy+20),(ox+52,oy+20),(ox+56,oy+50)], fill=A(body), outline=A(dark))
    D.rectangle([ox+14, oy+22, ox+50, oy+27], fill=A(light))
    # visor
    D.rectangle([ox+18, oy+30, ox+46, oy+38], fill=(20,20,24,255))
    D.rectangle([ox+21, oy+32, ox+43, oy+36], fill=(255,60,40,255))
    # cannon on top
    D.rectangle([ox+24, oy+6, ox+40, oy+20], fill=(70,72,80,255), outline=(40,40,46,255))
    D.rectangle([ox+29, oy+0, ox+35, oy+8], fill=(50,52,58,255))
    if glow:
        D.ellipse([ox+22, oy+0, ox+42, oy+16], fill=(255,150,40,255))
        D.ellipse([ox+27, oy+3, ox+37, oy+12], fill=(255,240,180,255))
    # hazard plate
    for x in range(20, 44):
        put(ox + x, oy + 44, (220,180,30) if (x // 3) % 2 else (30,30,30))
heavy(16, 0); heavy(17, 3); heavy(18, 0, glow=True); heavy(19, 0, tint=(250, 235, 210))
wreck(20, (150, 95, 35), (60, 60, 60))

def turret(f, flash=False, tint=None, broken=False):
    ox, oy = frame(f)
    body = (110, 116, 126) if tint is None else tint
    dark = tuple(int(v * 0.5) for v in body)
    D.polygon([(ox+16,oy+63),(ox+22,oy+40),(ox+42,oy+40),(ox+48,oy+63)], fill=A(dark))
    D.rectangle([ox+12, oy+58, ox+52, oy+63], fill=(50,50,56,255))
    if broken:
        D.polygon([(ox+18,oy+40),(ox+30,oy+30),(ox+46,oy+40)], fill=A(body))
        D.line([ox+30, oy+34, ox+44, oy+26], fill=(50,50,56,255), width=3)
        D.ellipse([ox+26, oy+44, ox+36, oy+54], fill=(60,20,20,255))
        return
    D.ellipse([ox+10, oy+16, ox+54, oy+44], fill=A(body), outline=A(dark))
    D.rectangle([ox+14, oy+22, ox+24, oy+28], fill=(60,60,66,255))      # twin barrels (front view)
    D.rectangle([ox+40, oy+22, ox+50, oy+28], fill=(60,60,66,255))
    D.ellipse([ox+16, oy+23, ox+22, oy+27], fill=(10,10,10,255))
    D.ellipse([ox+42, oy+23, ox+48, oy+27], fill=(10,10,10,255))
    D.ellipse([ox+26, oy+26, ox+38, oy+38], fill=(20,20,20,255))
    D.ellipse([ox+28, oy+28, ox+36, oy+36], fill=(255,40,40,255) if tint is None else (255,255,255,255))
    if flash:
        for cx in (19, 45):
            D.ellipse([ox+cx-8, oy+17, ox+cx+8, oy+33], fill=(255,230,90,255))
            D.ellipse([ox+cx-4, oy+21, ox+cx+4, oy+29], fill=(255,255,235,255))
turret(21); turret(22, flash=True); turret(23, tint=(235, 235, 240)); turret(24, broken=True)

# ======================= boss (128px) =======================
def boss(i, glow=False, tint=None, dead=False):
    ox, oy = i * 128, 192
    body = (150, 30, 40) if tint is None else tint
    dark = tuple(int(v * 0.45) for v in body)
    light = tuple(min(255, int(v * 1.4) + 30) for v in body)
    if dead:
        D.ellipse([ox+10, oy+96, ox+118, oy+127], fill=A(dark))
        D.polygon([(ox+20,oy+104),(ox+44,oy+76),(ox+66,oy+102)], fill=A(body))
        D.polygon([(ox+60,oy+106),(ox+90,oy+80),(ox+110,oy+108)], fill=(70,70,78,255))
        D.line([ox+30, oy+90, ox+8, oy+70], fill=(60,60,66,255), width=6)
        D.line([ox+96, oy+92, ox+122, oy+76], fill=(60,60,66,255), width=6)
        for cx in (50, 64, 78):
            D.ellipse([ox+cx-4, oy+108, ox+cx+4, oy+116], fill=(90,20,20,255))
        return
    # legs
    for (x0, x1) in [(30, 6), (46, 22), (82, 106), (98, 122)]:
        D.line([ox+x0, oy+80, ox+x1, oy+126], fill=(55,55,62,255), width=7)
        D.line([ox+x0, oy+80, ox+x1, oy+126], fill=(95,95,104,255), width=2)
    # arms with cannons
    for side in (-1, 1):
        cx = 64 + side * 50
        D.line([ox+64+side*24, oy+56, ox+cx, oy+44], fill=(70,70,78,255), width=8)
        D.rectangle([ox+cx-9, oy+30, ox+cx+9, oy+58], fill=(60,60,68,255), outline=(30,30,34,255))
        D.ellipse([ox+cx-6, oy+28, ox+cx+6, oy+40], fill=(15,15,15,255))
        if glow:
            D.ellipse([ox+cx-12, oy+18, ox+cx+12, oy+42], fill=(200,80,255,255))
            D.ellipse([ox+cx-6, oy+24, ox+cx+6, oy+36], fill=(255,235,255,255))
    # body
    D.ellipse([ox+24, oy+22, ox+104, oy+92], fill=A(body), outline=A(dark))
    D.ellipse([ox+34, oy+26, ox+80, oy+50], fill=A(light))
    D.rectangle([ox+40, oy+62, ox+88, oy+70], fill=A(dark))
    for x in range(42, 88, 6): D.rectangle([ox+x, oy+63, ox+x+2, oy+69], fill=(255,200,60,255))
    # three eyes
    for (cx, cy, r) in [(64, 46, 11), (44, 52, 6), (84, 52, 6)]:
        D.ellipse([ox+cx-r-2, oy+cy-r-2, ox+cx+r+2, oy+cy+r+2], fill=(15,10,15,255))
        col = (255, 255, 255) if tint is not None else ((255, 120, 255) if glow else (255, 220, 40))
        D.ellipse([ox+cx-r, oy+cy-r, ox+cx+r, oy+cy+r], fill=A(col))
        D.ellipse([ox+cx-r//3-1, oy+cy-r//2-1, ox+cx-r//3+2, oy+cy-r//2+2], fill=(255,255,255,255))
    # crown spikes
    for x in (44, 64, 84):
        D.polygon([(ox+x-6, oy+26), (ox+x, oy+6), (ox+x+6, oy+26)], fill=A(dark))
boss(0); boss(1, glow=True); boss(2, tint=(245, 215, 225)); boss(3, dead=True)

# ======================= gun =======================
def gun(gx, fire):
    gy = 320
    if fire:
        D.ellipse([gx+30, gy+0, gx+66, gy+34], fill=(255,200,60,255))
        D.ellipse([gx+38, gy+6, gx+58, gy+28], fill=(255,250,210,255))
    D.polygon([(gx+40,gy+22),(gx+56,gy+22),(gx+64,gy+70),(gx+32,gy+70)], fill=(80,84,92,255))
    D.polygon([(gx+44,gy+22),(gx+50,gy+22),(gx+52,gy+70),(gx+42,gy+70)], fill=(130,136,148,255))
    D.rectangle([gx+42, gy+18, gx+54, gy+24], fill=(40,42,48,255))
    D.rectangle([gx+44, gy+20, gx+52, gy+23], fill=(10,10,12,255))
    D.polygon([(gx+28,gy+60),(gx+68,gy+60),(gx+74,gy+95),(gx+22,gy+95)], fill=(58,60,66,255))
    D.rectangle([gx+40, gy+64, gx+56, gy+70], fill=(80,200,230,255))
    D.polygon([(gx+22,gy+78),(gx+40,gy+72),(gx+46,gy+95),(gx+16,gy+95)], fill=(214,160,120,255))
    D.polygon([(gx+56,gy+72),(gx+74,gy+78),(gx+80,gy+95),(gx+50,gy+95)], fill=(200,148,110,255))
gun(0, False); gun(96, True)

out = sys.argv[1] if len(sys.argv) > 1 else "Atlas.png"
img.save(out)
print("wrote", out)
