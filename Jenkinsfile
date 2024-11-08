pipeline {
    agent any
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
                    docker.withRegistry('https://registry.hub.docker.com', 'acb1d8d7-5cb5-4186-9897-3797443b7ae2') {
                        echo "Docker login successful."
                    }
                }
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t dylanm31222/webapp .'
            }
        }
        stage('Docker Push') {
            steps {
                sh 'docker push dylanm31222/webapp'
            }
        }
    }
}
