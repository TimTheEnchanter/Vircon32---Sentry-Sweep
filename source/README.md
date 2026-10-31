# Sentry Sweep — a simple FPS for Vircon32

A Wolfenstein-style raycasting shooter written in Vircon32 C. Clear a 16x16 maze of 8 sentry robots.

## Play

Load `bin/VirconFPS.v32` in the Vircon32 emulator.

| Control | Action |
|---|---|
| D-pad Up / Down | Move forward / back |
| D-pad Left / Right | Turn |
| L / R | Strafe |
| A (hold) | Fire |
| Y | Toggle minimap |
| Start | Start / restart |

Robots chase you when they have line of sight and shoot periodically (less accurate at range). Each takes 3 hits. Medkits (+35 HP) and ammo crates (+15) are scattered around the maze.

## Build

Requires the Vircon32 dev tools (`compile`, `assemble`, `png2vircon`, `packrom`) on your PATH.

- Linux/Mac: `./Make.sh`
- Windows: `Make.bat`

Output: `bin/VirconFPS.v32`

To regenerate the art: `python3 tools/make_atlas.py Atlas.png` (needs Pillow).

## How it works

- **Walls:** 128 rays per frame using DDA grid traversal, each drawn as a 5px-wide strip. Every wall texture column is predefined as its own 1x64 region, so a strip is just `select_region` + a zoomed draw. Distance and side shading via `set_multiply_color`.
- **Sprites:** Enemies and pickups are billboards drawn column by column, depth-sorted, and clipped against a per-column z-buffer from the wall pass.
- **Floor/ceiling:** banded gradients (cheap fake fog).
- **Budget:** peaks at ~108k of 250k CPU cycles per frame and ~36% of GPU pixel capacity, so it runs at a full 60 fps.

## Files

- `VirconFPS.c` — the whole game
- `Atlas.png` — single texture atlas (walls, robot frames, pickups, gun)
- `VirconFPS.xml` — ROM definition
- `tools/make_atlas.py` — procedural art generator
