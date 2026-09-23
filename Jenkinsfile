pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'echo Hello World'

                bat '''
                    @echo off
                    echo Multiline batch steps work too
                    dir
                '''
            }
        }
    }
}