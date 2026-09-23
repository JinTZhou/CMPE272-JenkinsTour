pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat '''
                    @echo off
                    if not exist dist mkdir dist
                    copy /Y app.py dist
                '''
            }
        }

        stage('Test') {
            steps {
                bat '''
                    @echo off
                    if not exist reports mkdir reports

                    docker run --rm ^
                        -v "%WORKSPACE%:/workspace" ^
                        -w /workspace ^
                        python:3.12-alpine ^
                        sh -c "pip install -r requirements.txt && pytest --junitxml=reports/junit.xml"
                '''
            }
        }
    }

    post {
        always {
            junit 'reports/*.xml'

            archiveArtifacts artifacts: 'dist/**',
                             fingerprint: true
        }
    }
}