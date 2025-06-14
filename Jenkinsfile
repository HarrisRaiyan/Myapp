pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'docker run --rm myapp npm test'
                // replace `npm test` with your actual test command
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker stop myapp || true'
                sh 'docker rm myapp || true'
                sh 'docker run -d --name myapp -p 80:80 myapp'
            }
        }
    }
}
