@echo off
setlocal EnableDelayedExpansion

set "STATE_FILE=deploy-attempt.txt"
set "ATTEMPT=0"

if exist "%STATE_FILE%" set /p ATTEMPT=<"%STATE_FILE%"

set /a ATTEMPT+=1
echo !ATTEMPT!>"%STATE_FILE%"

echo Deployment attempt !ATTEMPT!

if !ATTEMPT! LSS 3 (
    echo Simulated deployment failure.
    exit /b 1
)

del "%STATE_FILE%" >nul 2>&1
echo Deployment succeeded.
exit /b 0