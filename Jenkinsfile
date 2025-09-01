pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t hello-ci-cd .'
                }
            }
        }

        stage('Test') {
            steps {
                sh 'python3 -m pip install -r requirements.txt'
                sh 'python3 -m unittest discover'
            }
        }

        stage('Run') {
            steps {
                sh 'docker run -d -p 5000:5000 hello-ci-cd'
            }
        }
    }
}

