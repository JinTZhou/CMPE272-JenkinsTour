pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                bat 'if exist deploy-attempt.txt del /q deploy-attempt.txt'

                timeout(time: 3, unit: 'MINUTES') {
                    retry(5) {
                        bat 'call flakey-deploy.bat'
                    }
                }
            }
        }
    }
}