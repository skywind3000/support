@echo off

set "ROGUEOPTS=noPCgraphics,passgo,name:skywind"
set "ROGUEHOME=%USERPROFILE%\.local\share\rogue"

md "%ROGUEHOME%" 2> nul
pushd "%ROGUEHOME%"

if exist "skywind.sav" goto load_save

call "%~dp0rogue.exe"
goto exit

:load_save
call "%~dp0rogue.exe" skywind.sav

:exit
popd
echo.



