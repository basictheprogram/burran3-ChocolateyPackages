@ECHO OFF
setlocal enableDelayedExpansion
mode con: cols=120 lines=8
color 2f
echo choco-protocol-support v0.0.1.1 (04/08/2022)
echo choco:// protocol implementation by Bill Curran (bcurran3@yahoo.com)
echo.
set chocoprotocolURL=%1
set chocoprotocolURL=%chocoprotocolURL:"=%
set chocoprotocolURL=%chocoprotocolURL:choco://=%
set chocoprotocolURL=%chocoprotocolURL:/=%
set chocoprotocolURL=%chocoprotocolURL:  =%
echo   ** Installing %chocoprotocolURL% via %1
if exist %ChocolateyInstall%\lib\gsudo\bin\gsudo.exe (
   gsudo %ChocolateyInstall%\bin\cinst.exe %chocoprotocolURL% -y
   ) else (
   sudo %ChocolateyInstall%\bin\cinst.exe %chocoprotocolURL% -y
   )
timeout 10
