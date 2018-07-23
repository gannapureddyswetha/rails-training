pipeline {
    agent any
    stages {
       
        stage('Sanity check') {
            steps {
                sh 'cd /var/lib/jenkins/workspace/rails-training_master-HHZOTCCJAAJ6ID37PZFETZDAMW3DOHNLMNICWEVGEPDW5NJB76XA && bundle exec rake spec'
            }
        }
    }
}
