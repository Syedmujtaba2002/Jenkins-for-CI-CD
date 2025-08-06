pipeline {
    agent any

    environment {
        IMAGE_NAME = 'ci-cd-java-app'
    }

    stages {
        stage('Clone') {
    steps {
        git 'https://github.com/Syedmujtaba2002/Jenkins-for-CI-CD.git'
    }
}

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Docker Run') {
            steps {
                sh 'docker run -d -p 8080:8080 $IMAGE_NAME'
            }
        }
    }

    post {
        success {
            echo 'CI/CD pipeline for Java app completed successfully ✅'
        }
        failure {
            echo 'Pipeline failed ❌'
        }
    }
}
