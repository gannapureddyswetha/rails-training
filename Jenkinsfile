pipeline {
    agent any
    stages {
       
        stage('Sanity check') {
            steps {
                sh 'export PATH="$HOME/.rbenv/bin:$PATH" && eval "$(rbenv init -)" && bundle exec rake spec'
                
            }
        }
    }
}
