pipeline {

    agent any

    tools {
        maven 'mymaven'
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('SonarQube CQA') {
            steps {
                sh 'mvn sonar:sonar -Dsonar.projectKey=mydevops'
            }
        }

        stage('Build Docker Images') {
            steps {
                sh 'docker build -t mydevops-app:1.0 .'
                sh 'docker build -t mydevops-db:1.0 -f db/MySQLDockerfile db/'
            }
        }

        stage('Trivy Scan') {
            steps {
                sh 'trivy image mydevops-app:1.0'
                sh 'trivy image mydevops-db:1.0'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker compose up -d'
            }
        }
    }

    post {
        success {
            echo 'Complete CI/CD pipeline executed successfully.'
        }

        failure {
            echo 'Pipeline failed. Check the stage logs.'
        }
    }
}
