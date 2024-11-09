pipeline {
    agent any
    environment {
        DOCKER_PASSWORD = credentials('docker_password') 
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
                sh 'echo $DOCKER_PASSWORD | docker login -u dylanm31222 --password-stdin'
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