pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                bat '''
                    @echo off
                    echo Fail!
                    exit /b 1
                '''
            }
        }
    }

    post {
        always {
            echo 'This will always run'
        }

        success {
            echo 'This will run only if successful'
        }

        failure {
            echo 'This will run only if failed'
        }

        unstable {
            echo 'This will run only if the build was marked unstable'
        }

        changed {
            echo 'This runs only if the Pipeline result changed'
            echo 'For example, the previous build failed but this one succeeded'
        }
    }
}