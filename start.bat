@echo off
cls
title CS 1.6 Server Restarter
:server
echo Starting Counter-Strike 1.6...
echo Target Map: de_dust2
echo Port: 27015

:: Параметры запуска:
:: -console (запуск в режиме консоли)
:: -game cstrike (указывает на папку мода)
:: +ip 0.0.0.0 (сервер слушает все доступные IP)
:: +port 27015 (стандартный порт)
:: +maxplayers 32 (лимит игроков)
:: +map de_dust2 (начальная карта)
:: -sys_ticrate 1000 (устанавливает 1000 FPS для плавности стрельбы)
:: -noipx (отключает устаревший протокол IPX)

hlds.exe -console -game cstrike +ip 0.0.0.0 +port 27015 +maxplayers 32 +map de_dust2 -sys_ticrate 1000 -noipx

echo Server crashed or closed. Restarting in 5 seconds...
timeout /t 5
goto server