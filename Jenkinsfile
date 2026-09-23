pipeline {
    agent any

    stages {
        stage('Inspect Environment') {
            steps {
                bat '''
                    @echo off
                    echo Windows Jenkins environment:
                    ver
                    echo.
                    echo Docker execution environment:
                    docker run --rm python:3.12-alpine python -c "import platform; print('Architecture:', platform.machine()); print('Operating system:', platform.system())"
                '''
            }
        }
    }
}