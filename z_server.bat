@echo off
::Paste the server key from https://platform.plutonium.pw/serverkeys here
set key=
::RemoteCONtrol password, needed for most management tools like IW4MADMIN and B3. Do not skip if you installing IW4MADMIN.
set rcon_password=
::Name of the config file the server should use. (default: dedicated.cfg)
set cfg=dedicated.cfg
::Name of the server shown in the title of the cmd window. This will NOT bet shown ingame.
set name=T6 Bot Warfare
::Port used by the server (default: 4976)
set port=4980
::What ip to bind too
set ip=0.0.0.0
::Only change this when you don't want to keep the bat files in the game folder. MOST WON'T NEED TO EDIT THIS!
set gamepath=%cd%

title PlutoniumT6 - %name% - Server restarter
echo Visit plutonium.pw / Join the Discord (a6JM2Tv) for NEWS and Updates!
echo Server "%name%" will load "%cfg%" and listen on port "%port%" UDP with IP "%ip%"!
echo To shut down the server close this window first!
echo (%date%)  -  (%time%) %name% server start.

cd /D %LOCALAPPDATA%\Plutonium
:server
start /wait /abovenormal bin\plutonium-bootstrapper-win32.exe t6mp "%gamepath%" -dedicated -sv_config "%cfg%" -key "%key%" -net_ip "%ip%" -net_port "%port%" -rcon_password "%rcon_password%"
echo (%date%)  -  (%time%) WARNING: %name% server closed or dropped... server restarts.
goto server
