pipeline {
    agent { docker { image 'ruby' } }
    stages {
        stage('test') {
            steps {
                sh 'ruby --version'
            }
        }
    }
}
