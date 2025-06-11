stage('Build & Test') {
    steps {
        sh '''
            echo "🔧 Building the project..."
            npm install

            echo "🧪 Running tests..."
            npm test
        '''
    }
}
