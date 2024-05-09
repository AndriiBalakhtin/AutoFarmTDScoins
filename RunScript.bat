@echo off
setlocal

set "SCRIPT_FOLDER=.\script"
set "AHK_SCRIPT=%SCRIPT_FOLDER%\CoinGrindTds.ahk"

start "" "%AHK_SCRIPT%"

endlocal