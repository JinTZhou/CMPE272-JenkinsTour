pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                bat 'docker run --rm python:3.12-alpine python --version'
                echo 'Hello World from Jenkins!'
            }
        }
    }
}