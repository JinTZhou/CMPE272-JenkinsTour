pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat encoding: 'UTF-8', script: '''
                    @echo off
                    chcp 65001 >nul

                    echo Hello World
                    echo Multiline batch steps work too
                    dir
                '''
            }
        }
    }
}