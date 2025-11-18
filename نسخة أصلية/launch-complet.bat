@echo off
setlocal enabledelayedexpansion
title Quiz Coran - Serveur Local
color 0A

REM Change vers le dossier du script
cd /d "%~dp0"

REM Vider l'écran
cls

echo.
echo ==================================================
echo    QUIZ CORAN - Serveur Local
echo ==================================================
echo.

REM Vérifier Python
python --version >nul 2>&1
if errorlevel 1 (
    cls
    echo.
    echo [ERREUR] Python n'est pas installe!
    echo.
    echo Solution:
    echo 1. Installez Python: https://www.python.org
    echo 2. Cochez "Add Python to PATH" pendant l'installation
    echo 3. Redemarrez votre ordinateur
    echo 4. Relancez ce fichier
    echo.
    pause
    exit /b
)

REM Menu des ports
:menu
cls
echo.
echo ==================================================
echo    CHOIX DU PORT
echo ==================================================
echo.
echo 1. Port 8000 (par defaut - RECOMMANDE)
echo 2. Port 8001
echo 3. Port 8002
echo 4. Port 8003
echo 5. Port 9000
echo 6. Port personnalise
echo.

set PORT=8000
set /p CHOICE="Entrez votre choix (1-6): "

if "%CHOICE%"=="" set CHOICE=1

if "%CHOICE%"=="1" set PORT=8000
if "%CHOICE%"=="2" set PORT=8001
if "%CHOICE%"=="3" set PORT=8002
if "%CHOICE%"=="4" set PORT=8003
if "%CHOICE%"=="5" set PORT=9000
if "%CHOICE%"=="6" (
    set /p PORT="Entrez le port: "
)

if "%PORT%"=="" set PORT=8000

REM Lancer le serveur
cls
echo.
echo ==================================================
echo    DEMARRAGE DU SERVEUR
echo ==================================================
echo.
echo Port: %PORT%
echo.
echo Accedez a: http://localhost:%PORT%
echo.
echo [INFO] Ctrl + C pour arreter
echo.
echo ==================================================
echo.

timeout /t 2

REM Ouvrir le navigateur automatiquement
start http://localhost:%PORT%

REM Lancer le serveur Python
python -m http.server %PORT%

if errorlevel 1 (
    echo.
    echo [ERREUR] Impossible de demarrer le serveur
    echo Verifiez que le port n'est pas deja utilise
    pause
)

pause
