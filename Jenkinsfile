pipeline {
    agent any
    stages {
        stage ('Checkout SCM') {
            steps {checkout([$class: 'GitSCM', 
                   branches: [[name: '*/master']], 
                   doGenerateSubmoduleConfigurations: false, 
                   extensions: [[$class: 'CleanCheckout']], 
                   submoduleCfg: [], 
                   userRemoteConfigs: [[url: 'https://github.com/gannapureddyswetha/rails-training.git']]
                   ])
            }
        }

        stage('smoketest - Development') {
            steps {
                sh 'sudo gem install bundler'
                sh 'sudo bundle install'
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
