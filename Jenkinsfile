pipeline {
    agent any
    stages {
        stage("Clone Repository") {
            steps {
                git 'git@github.com:Nobel-hub/SimpleAppJenkins.git'
            }
        }

        stage("Build Docker Image") {
            steps {
                sh 'docker build -t simple-app .'  // Added '.'
            }
        }

        stage("Run Container") {
            steps {
                sh 'docker run -d -p 8081:80 simple-app'  // Image name now matches the build stage
            }
        }
    }
}
