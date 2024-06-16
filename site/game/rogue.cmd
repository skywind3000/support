@echo off

set "ROGUEOPTS=noPCgraphics,name:skywind"

cd /D "%~dp0"
cd /D "%USERPROFILE%"
cd

md "%USERPROFILE%\.config\rogue" 2> nul
cd .config
cd rogue

if exist "skywind.sav" goto load_save

call "%~dp0rogue.exe"
goto exit

:load_save
call "%~dp0rogue.exe" skywind.sav

:exit
echo.



