pipeline {
    agent any
    stages {
       
        stage('Sanity check') {
            steps {
                sh 'bundle exec rake spec'
            }
        }
    }
}
