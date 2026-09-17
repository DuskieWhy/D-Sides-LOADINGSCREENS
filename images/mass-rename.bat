@echo off
setlocal enabledelayedexpansion

set /a index=1

for %%f in (*.png) do (
    ren "%%f" "temp_!index!.tmp"
    set /a index+=1
)

set /a index=1

for %%f in (temp_*.tmp) do (
    ren "%%f" "!index!.png"
    set /a index+=1
)

echo Done renaming
pause