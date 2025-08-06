pipeline {
    agent any

    environment {
        IMAGE_NAME = "my-java-app"
    }

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning repository...'
                git branch: 'main', url: 'https://github.com/Syedmujtaba2002/Jenkins-for-CI-CD.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Compiling Java code...'
                sh 'javac -d out src/*.java'
            }
        }

        stage('Package') {
            steps {
                echo 'Packaging application...'
                sh 'jar -cvf app.jar -C out .'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh "docker build -t $IMAGE_NAME ."
            }
        }

        stage('Docker Run') {
            steps {
                echo 'Running Docker container...'
                sh "docker run -d -p 8080:8080 $IMAGE_NAME"
            }
        }
    }

    post {
        success {
            echo '✅ CI/CD pipeline completed!'
        }
        failure {
            echo '❌ Pipeline failed.'
        }
    }
}
