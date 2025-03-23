pipeline {
    agent any

    stages {
        stage("Clone Repository") {
            steps {
                git branch: 'main', url: 'https://github.com/Nobel-hub/SimpleAppJenkins.git'
            }
        }

        stage("Build Docker Image") {
            steps {
                script {
                    dockerImage = docker.build("simple-app:latest")
                }
            }
        }

        stage("Run Container") {
            steps {
                script {
                    dockerImage.run("-d -p 8080:8080")
                }
            }
        }
    }

    post {
        success {
            echo "Pipeline executed successfully!"
        }
        failure {
            echo "Pipeline failed! Check the logs for details."
        }
    }
}
