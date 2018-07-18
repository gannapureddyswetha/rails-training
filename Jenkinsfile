pipeline {
    agent any
    stages {
        /* "Build" and "Test" stages omitted */

        stage('Deploy - qa') {
            steps {
                sh 'gem install bundler'
                sh 'cap development deploy'
                sh 'echo run-smoke-tests'
            }
        }

        stage('Sanity check') {
            steps {
                input "Does the staging environment look ok?"
            }
        }

        stage('Deploy - staging') {
            steps {
                sh 'echo deploy production'
            }
        }
    }
}
