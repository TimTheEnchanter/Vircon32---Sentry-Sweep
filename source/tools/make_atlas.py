#!/usr/bin/env python3
# Generates Atlas.png for "Vircon Doom-ish": walls, enemy frames,
# pickups and the first-person gun. Everything is procedural pixel art.
#
# Atlas layout (512 x 256):
#   y   0..63  : 4 wall textures, 64x64 each, at x = 0, 64, 128, 192
#   x 256..259 : 4x4 white block (used to draw solid rectangles)
#   y  64..127 : 7 sprite frames, 64x64 each, x = 0..447
#                0 walkA, 1 walkB, 2 attack, 3 hurt, 4 dead, 5 medkit, 6 ammo
#   y 128..223 : gun 96x96 at x=0 (idle) and x=96 (firing)
import random, sys
from PIL import Image, ImageDraw

random.seed(32)
W, H = 512, 256
img = Image.new("RGBA", (W, H), (0, 0, 0, 0))
px = img.load()

def clamp(v): return max(0, min(255, int(v)))
def put(x, y, c, a=255):
    px[x, y] = (clamp(c[0]), clamp(c[1]), clamp(c[2]), a)
def jitter(c, n):
    d = random.randint(-n, n)
    return (c[0] + d, c[1] + d, c[2] + d)

# ---------------- walls ----------------
def wall_brick(ox):
    for y in range(64):
        row = y // 8
        off = 8 if row % 2 else 0
        for x in range(64):
            mortar = (y % 8 == 7) or ((x + off) % 16 == 15)
            if mortar:
                put(ox + x, y, jitter((70, 62, 55), 6))
            else:
                b = ((x + off) // 16 + row * 3) % 5
                base = (150 + b * 6, 62 + b * 3, 45)
                c = jitter(base, 12)
                if y % 8 == 0: c = (c[0] + 25, c[1] + 15, c[2] + 10)
                put(ox + x, y, c)

def wall_stone(ox):
    for y in range(64):
        for x in range(64):
            put(ox + x, y, jitter((108, 108, 112), 14))
    d = ImageDraw.Draw(img)
    blocks = [(0,0,30,20),(31,0,63,13),(31,14,63,30),(0,21,20,42),(21,21,46,42),
              (47,31,63,50),(0,43,30,63),(31,43,46,63),(47,51,63,63)]
    for (a,b,c,e) in blocks:
        d.rectangle([ox+a, b, ox+c, e], outline=(55,55,60,255))
        d.line([ox+a+1, b+1, ox+c-1, b+1], fill=(150,150,155,255))
        d.line([ox+a+1, b+1, ox+a+1, e-1], fill=(140,140,145,255))

def wall_tech(ox):
    for y in range(64):
        for x in range(64):
            c = jitter((62, 78, 104), 5)
            if x in (0, 31, 32, 63) or y in (0, 63): c = (32, 40, 56)
            if x in (1, 33) or y == 1: c = (98, 118, 150)
            put(ox + x, y, c)
    for (rx, ry) in [(4,4),(27,4),(36,4),(59,4),(4,59),(27,59),(36,59),(59,59)]:
        put(ox+rx, ry, (170,180,200)); put(ox+rx+1, ry+1, (30,36,50))
    for y in range(26, 38):          # glowing light strip
        for x in range(8, 56):
            if x in (31, 32): continue
            g = 230 - abs(y - 32) * 14
            put(ox + x, y, (g * 0.3, g * 0.9, g))
    for y in range(44, 54):          # vent slots
        if y % 3 == 0:
            for x in range(10, 54):
                if x not in (31, 32): put(ox + x, y, (24, 30, 42))

def wall_moss(ox):
    wall_stone(ox)
    for y in range(64):
        for x in range(64):
            r, g, b, a = px[ox + x, y]
            moss = (64 - y) / 64.0 * 0.9 + random.random() * 0.35
            if moss > 0.75:
                px[ox + x, y] = (clamp(r*0.45), clamp(g*0.85 + 25), clamp(b*0.4), 255)
    for i in range(10):              # dripping vines
        x = random.randint(0, 63); L = random.randint(10, 40)
        for y in range(L): put(ox + x, y, jitter((40, 110, 40), 15))

wall_brick(0); wall_stone(64); wall_tech(128); wall_moss(192)
for y in range(4):
    for x in range(256, 260): put(x, y, (255, 255, 255))

# ---------------- sprites ----------------
SY = 64
def frame_draw(f):
    return ImageDraw.Draw(img), f * 64, SY

def robot(f, legs, eye, flash=False, tint=None):
    d, ox, oy = frame_draw(f)
    body = (120, 40, 140) if tint is None else tint
    dark = tuple(int(c * 0.55) for c in body)
    light = tuple(min(255, int(c * 1.4) + 30) for c in body)
    # legs
    la, lb = legs
    d.rectangle([ox+18, oy+44, ox+24, oy+60+la], fill=dark+(255,))
    d.rectangle([ox+40, oy+44, ox+46, oy+60+lb], fill=dark+(255,))
    d.rectangle([ox+14, oy+59+la, ox+26, oy+63], fill=(40,40,45,255))
    d.rectangle([ox+38, oy+59+lb, ox+50, oy+63], fill=(40,40,45,255))
    # body
    d.ellipse([ox+8, oy+10, ox+56, oy+50], fill=body+(255,), outline=dark+(255,))
    d.ellipse([ox+14, oy+13, ox+40, oy+28], fill=light+(255,))
    d.ellipse([ox+12, oy+12, ox+52, oy+48], outline=dark+(255,))
    # arms / guns
    d.rectangle([ox+2, oy+28, ox+10, oy+40], fill=(70,70,78,255))
    d.rectangle([ox+54, oy+28, ox+62, oy+40], fill=(70,70,78,255))
    # eye
    d.ellipse([ox+22, oy+20, ox+42, oy+40], fill=(20,10,20,255))
    d.ellipse([ox+25, oy+23, ox+39, oy+37], fill=eye+(255,))
    d.ellipse([ox+28, oy+25, ox+33, oy+30], fill=(255,240,220,255))
    if flash:
        for (cx, cy) in [(6, 34), (58, 34)]:
            d.ellipse([ox+cx-6, oy+cy-6, ox+cx+6, oy+cy+6], fill=(255,220,80,255))
            d.ellipse([ox+cx-3, oy+cy-3, ox+cx+3, oy+cy+3], fill=(255,255,230,255))

robot(0, (0, -3), (230, 40, 40))
robot(1, (-3, 0), (230, 40, 40))
robot(2, (0, 0), (255, 140, 60), flash=True)
robot(3, (0, 0), (255, 255, 255), tint=(240, 200, 230))

# dead: wreck pile
d, ox, oy = frame_draw(4)
d.ellipse([ox+6, oy+48, ox+58, oy+63], fill=(60,20,70,255))
d.polygon([(ox+14,oy+52),(ox+24,oy+40),(ox+34,oy+50)], fill=(90,30,105,255))
d.polygon([(ox+32,oy+54),(ox+46,oy+42),(ox+54,oy+55)], fill=(80,80,90,255))
d.ellipse([ox+26, oy+50, ox+34, oy+58], fill=(80,20,20,255))
d.line([ox+20, oy+44, ox+16, oy+36], fill=(70,70,78,255), width=3)

# medkit
d, ox, oy = frame_draw(5)
d.rectangle([ox+16, oy+40, ox+48, oy+63], fill=(235,235,235,255), outline=(120,120,120,255))
d.rectangle([ox+16, oy+40, ox+48, oy+44], fill=(200,200,200,255))
d.rectangle([ox+29, oy+46, ox+35, oy+60], fill=(210,30,30,255))
d.rectangle([ox+24, oy+50, ox+40, oy+56], fill=(210,30,30,255))

# ammo box
d, ox, oy = frame_draw(6)
d.rectangle([ox+14, oy+46, ox+50, oy+63], fill=(90,100,50,255), outline=(50,55,25,255))
for i in range(5):
    x = ox + 17 + i * 7
    d.rectangle([x, oy+36, x+4, oy+46], fill=(220,180,60,255))
    d.rectangle([x, oy+34, x+4, oy+37], fill=(180,110,40,255))
d.rectangle([ox+22, oy+52, ox+42, oy+57], fill=(200,190,120,255))

# ---------------- gun ----------------
def gun(gx, fire):
    d = ImageDraw.Draw(img); gy = 128
    if fire:
        d.ellipse([gx+30, gy+0, gx+66, gy+34], fill=(255,200,60,255))
        d.ellipse([gx+38, gy+6, gx+58, gy+28], fill=(255,250,210,255))
    # barrel (perspective trapezoid)
    d.polygon([(gx+40,gy+22),(gx+56,gy+22),(gx+64,gy+70),(gx+32,gy+70)], fill=(80,84,92,255))
    d.polygon([(gx+44,gy+22),(gx+50,gy+22),(gx+52,gy+70),(gx+42,gy+70)], fill=(130,136,148,255))
    d.rectangle([gx+42, gy+18, gx+54, gy+24], fill=(40,42,48,255))
    d.rectangle([gx+44, gy+20, gx+52, gy+23], fill=(10,10,12,255))
    # body
    d.polygon([(gx+28,gy+60),(gx+68,gy+60),(gx+74,gy+95),(gx+22,gy+95)], fill=(58,60,66,255))
    d.rectangle([gx+40, gy+64, gx+56, gy+70], fill=(80,200,230,255))   # energy cell
    # hand
    d.polygon([(gx+22,gy+78),(gx+40,gy+72),(gx+46,gy+95),(gx+16,gy+95)], fill=(214,160,120,255))
    d.polygon([(gx+56,gy+72),(gx+74,gy+78),(gx+80,gy+95),(gx+50,gy+95)], fill=(200,148,110,255))

gun(0, False); gun(96, True)

out = sys.argv[1] if len(sys.argv) > 1 else "Atlas.png"
img.save(out)
print("wrote", out)
