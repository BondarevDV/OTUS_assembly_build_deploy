pipeline {
    agent { dockerfile true }
    stages{
        stage('Back-end-build') {
            steps {
                sh 'g++ --version'
                sh 'cmake --version'
            }
        }
    }
}
