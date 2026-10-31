#!/bin/bash
# Builds Sentry Sweep into bin/VirconFPS.v32
# Requires the Vircon32 dev tools (compile, assemble, png2vircon, packrom) in PATH.

abort_build()
{
    echo
    echo BUILD FAILED
    exit 1
}

mkdir -p obj
mkdir -p bin

echo Convert the ASCII levels
python3 tools/make_levels.py levels levels.h || abort_build

echo Compile the C code
compile VirconFPS.c -o obj/VirconFPS.asm || abort_build

echo Assemble the ASM code
assemble obj/VirconFPS.asm -o obj/VirconFPS.vbin || abort_build

echo Convert the PNG texture
png2vircon Atlas.png -o obj/Atlas.vtex || abort_build

echo Convert the WAV sounds
for f in sounds/*.wav; do
    wav2vircon "$f" -o "obj/$(basename "${f%.wav}").vsnd" || abort_build
done

echo Pack the ROM
packrom VirconFPS.xml -o bin/VirconFPS.v32 || abort_build

echo
echo BUILD SUCCESSFUL
