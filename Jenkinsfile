pipeline {
    agent any
    stages {
       

        stage('smoketest - Development') {
            steps {
                sh 'bundle install'
                sh 'echo run-smoke-tests'
            }
        }

        stage('Sanity check') {
            steps {
                sh 'bundle exec rake spec'
            }
        }
    }
}
