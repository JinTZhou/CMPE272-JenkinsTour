pipeline {
    agent any

    environment {
        DISABLE_AUTH = 'true'
        DB_ENGINE = 'sqlite'
    }

    stages {
        stage('Build') {
            steps {
                echo "Database engine is ${DB_ENGINE}"
                echo "DISABLE_AUTH is ${DISABLE_AUTH}"

                bat encoding: 'UTF-8', script: '''
                    @echo off
                    chcp 65001 >nul
                    set
                '''
            }
        }
    }
}