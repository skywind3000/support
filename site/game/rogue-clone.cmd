@echo off

set "ROGUEOPTS=noPCgraphics,name:skywind,passgo"
set "ROGUEHOME=%USERPROFILE%\.local\share\rogue-clone"

md "%ROGUEHOME%" 2> nul
pushd "%ROGUEHOME%"

if exist "%ROGUEHOME%\rogue.save" goto load_save

call "%~dp0rogue-clone.exe"
goto exit

:load_save
call "%~dp0rogue-clone.exe" "rogue.save"

:exit
popd
echo.



