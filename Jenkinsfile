pipeline {
    agent any
    environment {
        DOCKER_CREDENTIALS_ID = 'acb1d8d7-5cb5-4186-9897-3797443b7ae2' // Replace with your actual credentials ID
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/DylanM05/COMP367-Lab2.git'
            }
        }
        stage('Build Maven Project') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('Docker Login') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', DOCKER_CREDENTIALS_ID) {
                        echo "Docker login successful."
                    }
                }
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t dylanm31222/webapp1 .'
            }
        }
        stage('Docker Push') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', DOCKER_CREDENTIALS_ID) {
                        sh 'docker push dylanm31222/webapp1:latest'
                    }
                }
            }
        }
    }
}