pipeline {
    agent any

    environment {
        IMAGE_NAME = "myapp"
    }

    stages {
        stage('Clone') {
            steps {
                echo '🔁 Cloning repository...'
                git branch: 'main', url: 'https://github.com/Syedmujtaba2002/Jenkins-for-CI-CD.git'
            }
        }

        stage('Build & Package') {
            steps {
                echo '⚙️ Building Spring Boot App using Maven...'
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                echo '🐳 Building Docker image...'
                sh "docker build -t $IMAGE_NAME ."
            }
        }

        stage('Docker Run') {
            steps {
                echo '🚀 Running Docker container on port 5000...'
                sh "docker run -d -p 3000:3000 $IMAGE_NAME"
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline completed successfully!'
        }
        failure {
            echo '❌ Pipeline failed. Check the logs.'
        }
    }
}
