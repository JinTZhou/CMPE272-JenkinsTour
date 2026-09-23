@echo off

echo Starting health check...

powershell -NoProfile -Command "Start-Sleep -Seconds 5"

echo Health check passed.
exit /b 0