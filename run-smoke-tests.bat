@echo off

if not exist "deployments\staging\app.py" (
    echo Smoke test failed: deployed application was not found.
    exit /b 1
)

echo Smoke test passed: staging application exists.
exit /b 0