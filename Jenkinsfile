pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'call gradlew.bat build'
            }
        }

        stage('Test') {
            steps {
                bat 'call gradlew.bat check'
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'build/libs/**/*.jar',
                             fingerprint: true

            junit 'build/reports/**/*.xml'
        }
    }
}