# Sentry Sweep — an FPS for Vircon32

A raycasting shooter in Vircon32 C. Fight through four levels of robots with a blaster, shotgun and plasma rifle, find keycards and secrets, and destroy the Warden at the heart of the Core.

## Play

Load `bin/VirconFPS.v32` in the Vircon32 emulator.

| Control | Action |
|---|---|
| D-pad Up / Down | Move forward / back |
| D-pad Left / Right | Turn |
| L / R | Strafe |
| A (hold) | Fire |
| X | Switch weapon |
| B | Use: flip the exit switch, open a suspicious wall |
| Y | Toggle minimap |
| Start | Start / continue |

Doors open automatically as you approach. Red and blue doors need the matching keycard. Each level has one or two secret walls: they look almost like normal walls, with a faint warm tint, and open when you press B in front of them. Health and ammo carry over between levels. If you die, you restart the current level with full health.

## Weapons

| Weapon | Ammo | Behaviour |
|---|---|---|
| Blaster | Bullets (ammo crates) | 1 damage, about 5 shots a second. You start with it. |
| Shotgun | Shells | 7 pellets in a fan, 1 damage each. Up close most pellets land, and at range only a few do. Slow to reload. |
| Plasma rifle | Energy cells | Rapid visible bolts, 1 damage each, 12 shots a second. |

Picking up a new weapon switches to it. X cycles through the weapons you own, and firing an empty weapon falls back to one that still has ammo. Weapons and ammo carry between levels. If you die, you restart the level with the loadout you entered it with. Robots sometimes drop ammo: sentries and drones drop bullets, heavies drop cells, and turrets drop shells.

## Enemies

| Robot | HP | Behaviour |
|---|---|---|
| Sentry | 3 | Walks toward you, instant-hit shots |
| Scout drone | 1 | Fast, hovers in close and flanks, weak rapid shots |
| Heavy | 8 | Slow, fires plasma balls you can sidestep |
| Turret | 5 | Stationary, long range, 3-shot bursts |
| The Warden (boss) | 50 | Fires 3-way plasma spreads; enraged at half health: faster, 5-way spreads |

## Levels

1. **Outer Depot** — sentries and drones, red keycard, 1 secret, the shotgun
2. **Inner Depot** — a long loop through the depot's inner halls, 1 secret ammo cache
3. **Processing Plant** — introduces heavies and turrets, red and blue keycards, 2 secrets, the plasma rifle
4. **The Core** — everything at once, then the Warden's arena behind the blue door, 2 secrets

### Level editor

Open `tools/level_editor.html` in a browser. Paint walls, doors, robots and pickups with the game's own textures, using a brush, filled box, room, flood fill or pick tool, with undo. The editor checks the level as you go, using the same rules as the build, and shows a balance meter comparing ammo with robot health. You can walk the level in a first-person preview. When it's ready, copy the text into `levels/levelN.txt` and rebuild. Levels play in file-number order, and the last file must be the final (boss) level. To refresh the editor's built-in art and levels after changing them, run `python3 tools/build_editor.py`.

### Editing levels by hand

Levels are plain text files in `levels/` (32×32 characters). `tools/make_levels.py` checks that each one is completable and turns them into `levels.h`. The build does this automatically.

```
.  floor              P  player start
#  brick wall         s  sentry
%  stone wall         d  scout drone
=  tech wall          h  heavy
&  mossy wall         t  turret
X  exit switch        W  Warden (last level only)
D  door               +  medkit
R  red door           a  ammo crate
U  blue door          r  red keycard
1-4 secret wall       b  blue keycard
    (looks like       G  shotgun       g  shell box
     # % = &)         C  plasma rifle  c  energy cells
```

Above the map, `name:` sets the level title and `facing:` sets the starting direction (east/south/west/north). The checker reports anything that would break a level. That includes doors not set between two walls, unreachable items, keycards locked behind their own door, and a missing exit or boss.

## Build

Requires Python 3 and the Vircon32 dev tools (`compile`, `assemble`, `png2vircon`, `wav2vircon`, `packrom`) on your PATH.

- Linux/Mac: `./Make.sh`
- Windows: `Make.bat`

Output: `bin/VirconFPS.v32`

Regenerate the art: `python3 tools/make_atlas.py Atlas.png` (needs Pillow).
Regenerate the music: `python3 tools/make_music.py sounds` (needs NumPy and SciPy).
Regenerate the sounds: `python3 tools/make_sounds.py sounds` (needs NumPy). Add a second folder argument (e.g. `obj`) to also write ready-made `.vsnd` files, which skips `wav2vircon`.

## How it works

- **Walls:** 128 rays per frame using DDA grid traversal, each drawn as a 5px strip. Every texture column is predefined as its own region, so a strip is one `select_region` plus a zoomed draw.
- **Doors:** thin panels at the middle of their cell (Wolfenstein-style). The ray tests the panel and passes through the part that has slid open.
- **Sprites:** depth-sorted billboards drawn column by column and clipped against the wall z-buffer. The boss uses 128px frames.
- **Budget:** gameplay peaks at about 132k of the 250k CPU cycles per frame (during the boss fight) and stays well within the GPU limit.

## Music

There are four looping tracks, composed in code by `tools/make_music.py`:

| Track | Plays during |
|---|---|
| Title | The title screen, and again after the victory screen |
| Depot | The first half of the game (levels 1–2) |
| Core | The second half (levels 3–4) |
| Warden | The boss fight, from the moment the Warden wakes |

Music plays on channel 15, which is reserved for it, so sound effects never cut it off. It stops at level end and on death, where the stingers play instead. Each track is rendered as an exact number of bars, with ringing notes folded back onto the start, so the loops are seamless. With more or fewer levels, the split between Depot and Core adjusts automatically.

## Sound

Nineteen synthesized effects. Enemy sounds get quieter with distance, and repeated sounds vary slightly in pitch.

## Files

- `VirconFPS.c` — the game
- `levels/level1-4.txt` — the maps
- `levels.h` — generated from the maps
- `Atlas.png` — texture atlas (walls, doors, robots, boss, pickups, gun)
- `sounds/*.wav` — sound effects and music
- `VirconFPS.xml` — ROM definition
- `tools/level_editor.html` — the level editor (built from `tools/editor_template.html` by `tools/build_editor.py`)
- `tools/make_atlas.py`, `tools/make_sounds.py`, `tools/make_music.py`, `tools/make_levels.py` — generators
