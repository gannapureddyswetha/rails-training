pipeline {
    agent any
    stages {
       
        stage('Sanity check') {
            steps {
                sh 'export PATH="$HOME/.rbenv/bin:$PATH" && eval "$(rbenv init -)"'
                sh 'bundle exec rake spec'
            }
        }
    }
}
