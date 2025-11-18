@echo off
setlocal enabledelayedexpansion
title Quiz Coran - Port 8000
color 0A
cd /d "%~dp0"

echo Demarrage du serveur Quiz Coran...
echo Port: 8000
echo Url: http://localhost:8000
echo.
echo Ouverture du navigateur...
echo.

timeout /t 1

REM Ouvrir le navigateur automatiquement
start http://localhost:8000

REM Lancer le serveur Python
python -m http.server 8000

pause
