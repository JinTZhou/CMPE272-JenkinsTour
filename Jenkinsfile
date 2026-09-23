pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                // Reset the demonstration counter before retrying.
                bat 'if exist deploy-attempt.txt del /q deploy-attempt.txt'

                retry(3) {
                    bat 'call flakey-deploy.bat'
                }

                timeout(time: 3, unit: 'MINUTES') {
                    bat 'call health-check.bat'
                }
            }
        }
    }
}