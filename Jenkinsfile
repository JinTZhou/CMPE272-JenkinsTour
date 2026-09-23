pipeline {
    agent any

    stages {
        /* Build and Test stages omitted */

        stage('Deploy - Staging') {
            steps {
                bat 'call deploy.bat staging'
                bat 'call run-smoke-tests.bat'
            }
        }

        stage('Sanity check') {
            steps {
                input 'Does the staging environment look ok?'
            }
        }

        stage('Deploy - Production') {
            steps {
                bat 'call deploy.bat production'
            }
        }
    }
}