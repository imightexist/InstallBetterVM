@echo off
echo BetterVM version of Windows mkcvm
echo Note: this is untested
timeout /t 5 > nul
title Checking Windows version
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if %version% == "10.0" goto mkbettervm
if %version% == "6.3" goto mkbettervm
if %version% == "6.2" goto mkbettervm
if %version% == "6.1" goto mkbettervm
echo Sorry, your Windows version is not supported.
pause
exit

:mkbettervm
title Downloading mkcvm..
