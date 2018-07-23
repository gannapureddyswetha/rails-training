pipeline {
    agent any
    stages {
       
        stage('CI-Dev Bundleinstall ') {
            steps {
                sh 'export PATH="$HOME/.rbenv/bin:$PATH" && eval "$(rbenv init -)" && bundle install'
                
            }
        }
        stage('Sanity check') {
            steps {
                sh 'export PATH="$HOME/.rbenv/bin:$PATH" && eval "$(rbenv init -)" && bundle exec rake test'
                
            }
        }
    }
}
