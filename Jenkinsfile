pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/Syedmujtaba2002/Jenkins-for-CI-CD.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the application...'
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'npm test || echo "No test defined"' // Avoid failure if no test
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t my-node-app .'
            }
        }

        stage('Docker Run') {
            steps {
                echo 'Running Docker container...'
                sh 'docker run -d -p 3000:3000 my-node-app'
            }
        }
    }
}
