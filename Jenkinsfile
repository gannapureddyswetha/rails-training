pipeline {
    agent any
    stages {
        /* "Build" and "Test" stages omitted */

        stage('smoketest - Development') {
            steps {
                sh 
                sh 'gem install bundler'
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
