pipeline {
    agent any

    stages {
        stage('No-op') {
            steps {
                bat '''
                    @echo off
                    echo Workspace contents:

                    for /D %%D in (*) do echo [DIRECTORY] %%D
                    for %%F in (*) do echo [FILE] %%F
                '''
            }
        }
    }

    post {
        always {
            echo 'One way or another, I have finished'
            deleteDir()
        }

        success {
            echo 'I succeeded!'
        }

        unstable {
            echo 'I am unstable :/'
        }

        failure {
            echo 'I failed :('
        }

        changed {
            echo 'Things were different before...'
        }
    }
}