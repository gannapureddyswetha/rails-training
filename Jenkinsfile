pipeline {
    agent any
    stages {
        /* "Build" and "Test" stages omitted */

        stage('Test') {
            steps {
                sh 'bundle exec rake spec'
            }
        }

        post {
            always {
                junit 'build/reports/**/*.xml'
            }
        }
        
        stage('Deploy check') {
            steps {
                sh '$ docker build -t my-ruby-app .
                      docker run -it --name my-running-script my-ruby-app'
                input "Can i proceed?"
            }
        }

        stage('Deploy - qa') {
            steps {
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
