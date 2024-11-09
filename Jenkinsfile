pipeline {
    agent any
    environment {
        DOCKER_CREDENTIALS_ID = 'acb1d8d7-5cb5-4186-9897-3797443b7ae2' // Replace with your actual credentials ID
        DOCKER_USERNAME = credentials('docker-username') // Replace with your Docker Hub username credentials ID
        DOCKER_PASSWORD = credentials('docker-password') // Replace with your Docker Hub password credentials ID
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
                sh 'ls -l target' // List the contents of the target directory
            }
        }
        stage('Docker Login') {
            steps {
                sh 'echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t dylanm31222/webapp1 .'
            }
        }
        stage('Docker Push') {
            steps {
                sh 'docker push dylanm31222/webapp1:latest'
            }
        }
    }
}