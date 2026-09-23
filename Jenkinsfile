pipeline {
    agent {
        docker {
            image 'python:3.12-alpine'
        }
    }

    stages {
        stage('Hello') {
            steps {
                sh 'python --version'
                echo 'Hello World from Jenkins!'
            }
        }
    }
}