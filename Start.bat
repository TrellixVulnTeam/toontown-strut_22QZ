@echo off
title Toontown CLI Launcher

echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo What do you want to do!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo.
echo #1 - Run Toontown
echo. 
:selection

set INPUT=-1
set /P INPUT=Selection:


if %INPUT%==1 (
    goto run
) else (
	goto selection
)


:run
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo What do you want to launch?
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo. 
echo #1 - Locally Host a Server
echo #2 - Connect to an Existing Server
echo #3 - Connect to the Internal Server
echo.

set INPUT=-1
set /P INPUT=Selection:
if %INPUT%==1 (
    goto localhost
) else if %INPUT%==2 (
    goto connect
) else if %INPUT%==3 (
    goto internal
) else (
	goto run
)


:localhost
cls 
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Starting Localhost...
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
cd scripts
echo Launching the AI Server...
START ai-win32.bat
echo Launching Astron...
START astron-win32.bat
echo Launching the Uberdog Server...
START uberdog-win32.bat
cd ..
SET TTS_GAMESERVER=127.0.0.1
goto game

:internal
SET TTS_GAMESERVER=127.0.0.1
goto game

:connect
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo What Server are you connecting to?
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
set /P TTS_GAMESERVER="Server IP: "

:game
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Passkey [!] KEEP SECRET
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
set /P TIA_PLAYCOOKIE="Passkey: "
echo.
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Welcome to Toontown, %TIA_PLAYCOOKIE%!
echo The Tooniverse Awaits You!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
:startgame
title Toontown Client
"dependencies/panda/python/python" -m toontown.toonbase.ToontownStart
PAUSE
goto startgame
