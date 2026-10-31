@echo off
REM Builds Sentry Sweep into bin\VirconFPS.v32
REM Requires the Vircon32 dev tools folder in PATH.

if not exist obj mkdir obj
if not exist bin mkdir bin

echo Compile the C code
compile VirconFPS.c -o obj\VirconFPS.asm || goto :failed

echo Assemble the ASM code
assemble obj\VirconFPS.asm -o obj\VirconFPS.vbin || goto :failed

echo Convert the PNG texture
png2vircon Atlas.png -o obj\Atlas.vtex || goto :failed

echo Pack the ROM
packrom VirconFPS.xml -o bin\VirconFPS.v32 || goto :failed

echo.
echo BUILD SUCCESSFUL
goto :end

:failed
echo.
echo BUILD FAILED

:end
pause
