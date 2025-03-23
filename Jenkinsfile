pipeline {
    agent any

    stages {
        stage ("Clone Repository") {
            steps {
                git 'https://github.com/Nobel-hub/SimpleAppJenkins.git'
            }
        }

        stage("Build Docker Image") {
            steps {
                sh 'docker build -t simple-application .'
            }
        }

        stage ("Run Container") {
            steps {
                sh 'docker run -d -p 8081:80 simple-application'
            }
        }
    }
}
