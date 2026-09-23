pipeline {
    agent any

    stages {
        stage('Environment Variables') {
            steps {
                echo "Jenkins application name: ${APP_NAME}"

                bat '''
                    @echo off
                    echo Application: %APP_NAME%
                    echo Test environment: %TEST_ENV%
                    echo Build number: %BUILD_NUMBER%
                    echo Branch: %BRANCH_NAME%
                    echo Workspace: %WORKSPACE%
                '''
            }
        }
    }
}