pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/Emmyace-hub/jenkins-scm.git', branch: 'main'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test'
            }
        }
    }

    post {
        always {
            echo '✅ Pipeline execution completed!'
        }
        failure {
            echo '❌ Build or test failed.'
        }
    }
}

