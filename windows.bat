@echo off
echo BetterVM version of Windows mkcvm
echo Note: this is untested
timeout /t 5 > nul
title Checking Windows version
md bettervm
cd bettervm
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if %version% == "10.0" goto download8
if %version% == "6.3" goto download8
if %version% == "6.2" goto download8
if %version% == "6.1" goto download7
echo Sorry, your Windows version is not supported.
pause
exit

:download7
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://cdn-eu-hz-4.ufile.io/get/9zvit0xx?token=Y2E4ZmZhODBkYTBjYjIyNDkzNzQyY2I4YjBlYWFkYjVjY2RlM2E5ODRkYjk1YmM0YTc0ZGUzZGYyNDE1MDUwMjExNjQ2M2U5NGRiZjEwZDk3ZDc4ZjY1ZGIyZTIwMTIyMDU1OWQ5ZmQ0NTg5MDFiMzNmMjA1NTQ2ZDNkOGI4NzUxRzVxWFo5MzVpbDdLMTBlaVY5eDFaamw0RXBvQXQ1TmpjbE12Q0dUbzY2SXY5ejNvbVBKRmtxd3NHdHVOMzBIUnc3QXJ0K04wS3duWmhkSk1ESWwxL1R3dS9UaENyMjBuVjNBSlo5N25XNkc2cHB0UWV2ejlVZWZ3bHF0clVwVThySnRadzY3TkxmQ0pKRnBnTHIzZ1daek1YQ2xvMDJ6c1czaXNQaDBzN0JkeDg0bVpLTUJRUWxUeHRzdWVVUG8xb2J2aHY2dURvZXJkQzlBM25VWG51SlZsZkxxMy9meGdoRzVpTDFtdXJ4UVF6b0hvT0RwTjV3NmlUTFZaQ0Ji', 'curl.exe')"
goto mkbettervm

:download8
powershell -Command "Invoke-WebRequest https://cdn-eu-hz-4.ufile.io/get/9zvit0xx?token=Y2E4ZmZhODBkYTBjYjIyNDkzNzQyY2I4YjBlYWFkYjVjY2RlM2E5ODRkYjk1YmM0YTc0ZGUzZGYyNDE1MDUwMjExNjQ2M2U5NGRiZjEwZDk3ZDc4ZjY1ZGIyZTIwMTIyMDU1OWQ5ZmQ0NTg5MDFiMzNmMjA1NTQ2ZDNkOGI4NzUxRzVxWFo5MzVpbDdLMTBlaVY5eDFaamw0RXBvQXQ1TmpjbE12Q0dUbzY2SXY5ejNvbVBKRmtxd3NHdHVOMzBIUnc3QXJ0K04wS3duWmhkSk1ESWwxL1R3dS9UaENyMjBuVjNBSlo5N25XNkc2cHB0UWV2ejlVZWZ3bHF0clVwVThySnRadzY3TkxmQ0pKRnBnTHIzZ1daek1YQ2xvMDJ6c1czaXNQaDBzN0JkeDg0bVpLTUJRUWxUeHRzdWVVUG8xb2J2aHY2dURvZXJkQzlBM25VWG51SlZsZkxxMy9meGdoRzVpTDFtdXJ4UVF6b0hvT0RwTjV3NmlUTFZaQ0Ji -OutFile curl.exe"
goto mkbettervm

:mkbettervm
set curl=%cd%\curl.exe
title Running mkcvm..
call mkcvm.bat
cd..
title Downloading Arch...
curl -0 http://mirror.rackspace.com/archlinux/iso/2021.12.01/archlinux-2021.12.01-x86_64.iso --output 7.iso
curl -Lk https://hfs-redirect.glitch.me/7zexe.html --output 7z.exe
curl -Lk https://hfs-redirect.glitch.me/7zdll.html --output 7z.dll
