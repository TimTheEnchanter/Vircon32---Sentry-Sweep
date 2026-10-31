#!/usr/bin/env python3
# Converts the ASCII maps in levels/ into levels.h for the game, after
# checking that every level is completable.
#
#   python3 tools/make_levels.py levels levels.h
#
# Map legend (32x32, one character per cell):
#   .  floor                      P  player start
#   #  brick wall                 s  sentry robot
#   %  stone wall                 d  scout drone
#   =  tech wall                  h  heavy robot (plasma)
#   &  mossy wall                 t  turret
#   X  exit switch (wall)         W  warden (boss)
#   D  door                       +  medkit
#   R  red keycard door           a  ammo crate
#   U  blue keycard door          r  red keycard
#   1-4 secret wall that looks    b  blue keycard
#       like wall type #,%,=,&    G  shotgun        g  shell box
#                                 C  plasma rifle   c  energy cells
# Header lines before the map:  "name: TEXT"  and  "facing: east|south|west|north"
import glob, os, sys
from collections import deque

N = 32
MAX_ENEMIES, MAX_ITEMS, MAX_DOORS = 24, 24, 32
TILES = {".": 0, "#": 1, "%": 2, "=": 3, "&": 4, "X": 5, "D": 6, "R": 7, "U": 8,
         "1": 11, "2": 12, "3": 13, "4": 14}
ENEMIES = {"s": 0, "d": 1, "h": 2, "t": 3, "W": 4}
ITEMS = {"+": 5, "a": 6, "r": 7, "b": 8, "G": 25, "C": 26, "g": 27, "c": 28}
FACING = {"east": 0, "south": 1, "west": 2, "north": 3}
SOLID = set("#%=&X1234")

def load(path):
    name, facing, rows = "LEVEL", "east", []
    for line in open(path).read().splitlines():
        if line.startswith("name:"): name = line[5:].strip().upper()
        elif line.startswith("facing:"): facing = line[7:].strip().lower()
        elif line.strip(): rows.append(line.rstrip("\n"))
    return name, facing, rows

def check(path, name, facing, rows, is_last):
    errs = []
    if len(rows) != N: errs.append(f"expected {N} rows, found {len(rows)}")
    for y, r in enumerate(rows):
        if len(r) != N: errs.append(f"row {y} has {len(r)} characters (expected {N})")
        for x, ch in enumerate(r):
            if ch not in TILES and ch not in ENEMIES and ch not in ITEMS and ch != "P":
                errs.append(f"unknown character '{ch}' at ({x},{y})")
    if errs: return errs
    g = rows
    if facing not in FACING: errs.append(f"unknown facing '{facing}'")
    for i in range(N):
        for (x, y) in [(i, 0), (i, N-1), (0, i), (N-1, i)]:
            if g[y][x] not in SOLID: errs.append(f"border cell ({x},{y}) must be a wall")
    starts = [(x, y) for y in range(N) for x in range(N) if g[y][x] == "P"]
    if len(starts) != 1: return errs + [f"need exactly one P, found {len(starts)}"]
    nen = sum(ch in ENEMIES for r in g for ch in r); nit = sum(ch in ITEMS for r in g for ch in r)
    if nen > MAX_ENEMIES: errs.append(f"too many enemies ({nen} > {MAX_ENEMIES})")
    if nit > MAX_ITEMS: errs.append(f"too many items ({nit} > {MAX_ITEMS})")
    ndo = sum(ch in "DRU" for r in g for ch in r)
    if ndo > MAX_DOORS: errs.append(f"too many doors ({ndo} > {MAX_DOORS})")
    # doors need walls on two opposite sides and open space on the other two
    for y in range(1, N-1):
        for x in range(1, N-1):
            if g[y][x] in "DRU":
                lr = g[y][x-1] in SOLID and g[y][x+1] in SOLID
                ud = g[y-1][x] in SOLID and g[y+1][x] in SOLID
                if lr == ud: errs.append(f"door at ({x},{y}) must sit between two walls in a corridor")
    # reachability, collecting keys as we go (secret walls can be opened)
    keys = set(); prev = None
    while prev != (len(keys)):
        prev = len(keys)
        seen = set([starts[0]]); q = deque([starts[0]])
        while q:
            x, y = q.popleft()
            for nx, ny in [(x+1,y),(x-1,y),(x,y+1),(x,y-1)]:
                ch = g[ny][nx]
                if (nx, ny) in seen: continue
                if ch in "#%=&X": continue
                if ch == "R" and "r" not in keys: continue
                if ch == "U" and "b" not in keys: continue
                seen.add((nx, ny)); q.append((nx, ny))
                if ch in "rb": keys.add(ch)
    for y in range(N):
        for x in range(N):
            ch = g[y][x]
            if (ch in ENEMIES or ch in ITEMS) and (x, y) not in seen:
                errs.append(f"'{ch}' at ({x},{y}) can't be reached")
    exits = [(x, y) for y in range(N) for x in range(N) if g[y][x] == "X"]
    usable = [e for e in exits if any((e[0]+dx, e[1]+dy) in seen for dx, dy in [(1,0),(-1,0),(0,1),(0,-1)])]
    bosses = sum(ch == "W" for r in g for ch in r)
    if is_last:
        if bosses != 1: errs.append("the last level needs exactly one boss (W)")
    else:
        if not usable: errs.append("no reachable exit (X)")
        if bosses: errs.append("only the last level can have a boss (W)")
    if any(ch == "R" for r in g for ch in r) and not any(ch == "r" for r in g for ch in r):
        errs.append("red door but no red keycard")
    if any(ch == "U" for r in g for ch in r) and not any(ch == "b" for r in g for ch in r):
        errs.append("blue door but no blue keycard")
    return errs

def main():
    src, out = sys.argv[1], sys.argv[2]
    files = sorted(glob.glob(os.path.join(src, "level*.txt")), key=lambda p: int("".join(c for c in os.path.basename(p) if c.isdigit()) or 0))
    if not files: sys.exit("no level*.txt files found")
    tiles, starts, enemies, items, names = [], [], [], [], []
    ok = True
    for i, path in enumerate(files):
        name, facing, rows = load(path)
        errs = check(path, name, facing, rows, i == len(files) - 1)
        if errs:
            ok = False
            print(f"{path}:"); [print("   ", e) for e in errs]; continue
        en, it = [], []
        for y in range(N):
            for x in range(N):
                ch = rows[y][x]
                tiles.append(TILES.get(ch, 0))
                if ch == "P": starts += [x, y, FACING[facing]]
                if ch in ENEMIES: en += [ENEMIES[ch], x, y]
                if ch in ITEMS: it += [ITEMS[ch], x, y]
        enemies += en + [-1, 0, 0] * (MAX_ENEMIES - len(en) // 3)
        items += it + [-1, 0, 0] * (MAX_ITEMS - len(it) // 3)
        names.append(name)
        secrets = sum(c.isdigit() for r in rows for c in r)
        print(f"{path}: OK  '{name}'  enemies {len(en)//3}, items {len(it)//3}, secrets {secrets}")
    if not ok: sys.exit("level check failed")

    def arr(ctype, cname, size, vals, per=32):
        body = ",\n    ".join(", ".join(str(v) for v in vals[i:i+per]) for i in range(0, len(vals), per))
        return f"{ctype}[ {size} ] {cname} =\n{{\n    {body}\n}};\n\n"

    with open(out, "w") as f:
        f.write("// Generated by tools/make_levels.py from levels/*.txt - do not edit by hand\n\n")
        f.write(f"#define LEVEL_COUNT        {len(files)}\n#define MAX_LEVEL_ENEMIES  {MAX_ENEMIES}\n#define MAX_LEVEL_ITEMS    {MAX_ITEMS}\n\n")
        f.write(arr("int", "LevelTiles", "LEVEL_COUNT * 1024", tiles))
        f.write(arr("int", "LevelStarts", "LEVEL_COUNT * 3", starts, 3))
        f.write(arr("int", "LevelEnemies", "LEVEL_COUNT * MAX_LEVEL_ENEMIES * 3", enemies, 24))
        f.write(arr("int", "LevelItems", "LEVEL_COUNT * MAX_LEVEL_ITEMS * 3", items, 24))
        f.write("void GetLevelName( int level, int* out )\n{\n")
        for i, n in enumerate(names):
            f.write(f"    {'if' if i == 0 else 'else if'}( level == {i} ) strcpy( out, \"{n}\" );\n")
        f.write("}\n")
    print("wrote", out)

main()
