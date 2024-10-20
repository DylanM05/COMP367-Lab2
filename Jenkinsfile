pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/DylanM05/COMP367-Lab2.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
    post {
        success {
            archiveArtifacts artifacts: 'src/main/webapp/index.jsp', fingerprint: true
        }
    }
}
