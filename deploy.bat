@echo off
setlocal

if "%~1"=="" (
    echo ERROR: No deployment environment supplied.
    exit /b 1
)

set "TARGET=%~1"

if not exist "deployments\%TARGET%" (
    mkdir "deployments\%TARGET%"
)

copy /Y "app.py" "deployments\%TARGET%\app.py" >nul

if errorlevel 1 (
    echo Deployment failed.
    exit /b 1
)

echo Successfully deployed app.py to %TARGET%.
exit /b 0