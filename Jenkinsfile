pipeline {
    agent { dockerfile true }
    stages{
        stage('Back-end-build') {
            steps {
                sh 'g++ --version'
                sh 'cd build'
                sh 'cmake ../src'
                sh 'cmake --build ./'
                sh 'cmake --build ./ --target test'
            }
        }
    }
}
