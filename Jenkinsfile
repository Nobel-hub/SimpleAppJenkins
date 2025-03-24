pipeline {
    agent any

    environment {
        IMAGE_NAME = "simple-app:latest"
        CONTAINER_NAME = "simple-app-container"
    }

    stages {
        stage("Clone Repository") {
            steps {
                git branch: 'main', url: 'https://github.com/Nobel-hub/SimpleAppJenkins.git'
            }
        }

        stage("Build Docker Image") {
            steps {
                script {
                    dockerImage = docker.build(IMAGE_NAME)
                }
            }
        }

        stage("Stop Existing Container") {
            steps {
                script {
                    sh """
                    docker stop $CONTAINER_NAME || true
                    docker rm $CONTAINER_NAME || true
                    """
                }
            }
        }

        stage("Run Container") {
            steps {
                script {
                    sh """
                    docker run -d -p 9090:80 --name $CONTAINER_NAME $IMAGE_NAME
                    """
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
