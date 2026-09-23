pipeline {
    agent any

    stages {
        stage('No-op') {
            steps {
                bat 'dir'
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

    post {
        failure {
            mail to: 'jinting.zhou01@gmail.com',
                subject: "Failed Pipeline: ${currentBuild.fullDisplayName}",
                body: "Something is wrong with ${env.BUILD_URL}"
        }
        success {
            mail to: 'jinting.zhou01@gmail.com',
                subject: "Successful Pipeline: ${currentBuild.fullDisplayName}",
                body: "Nothing is wrong with ${env.BUILD_URL}"
        }
    }
}