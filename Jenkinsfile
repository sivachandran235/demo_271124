pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/sivachandran235/demo_271124.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-nginx-website .'
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker stop my-nginx-container || true'
                    sh 'docker rm my-nginx-container || true'
                    sh 'docker run -d -p 8080:80 --name my-nginx-container my-nginx-website'
                }
            }
        }
    }
    post {
        always {
            echo 'Pipeline execution completed.'
        }
    }
}
