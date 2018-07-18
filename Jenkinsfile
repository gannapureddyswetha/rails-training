pipeline {
    agent any
    stages {
        /* "Build" and "Test" stages omitted */

        stage('Deploy - Staging') {
            steps {
                sh 'gem install bundler'
                sh ' -d \$HOME/.rbenv'
                sh '-d \$HOME/.rbenv/plugins/ruby-build'
                sh 'cd /var/lib/jenkins/jobs/CD/workspace && env RBENV_ROOT\=\$HOME/.rbenv RBENV_VERSION\=2.3.7 CONFIGURE_OPTS\= RUBY_CONFIGURE_OPTS\= \$HOME/.rbenv/bin/rbenv local 2>/dev/null || true'
                sh 'mkdir \$HOME/.rbenv/.lock'
                sh 'env RBENV_ROOT\=\$HOME/.rbenv RBENV_VERSION\=2.3.7 CONFIGURE_OPTS\= RUBY_CONFIGURE_OPTS\= \$HOME/.rbenv/bin/rbenv versions --bare'
                sh 'env RBENV_ROOT\=\$HOME/.rbenv RBENV_VERSION\=2.3.7 CONFIGURE_OPTS\= RUBY_CONFIGURE_OPTS\= \$HOME/.rbenv/bin/rbenv rehash'
                sh 'env RBENV_ROOT\=\$HOME/.rbenv RBENV_VERSION\=2.3.7 CONFIGURE_OPTS\= RUBY_CONFIGURE_OPTS\= \$HOME/.rbenv/bin/rbenv exec gem list'
                sh 'env RBENV_ROOT\=\$HOME/.rbenv RBENV_VERSION\=2.3.7 CONFIGURE_OPTS\= RUBY_CONFIGURE_OPTS\= \$HOME/.rbenv/bin/rbenv rehash'
                sh 'rm -rf \$HOME/.rbenv/.lock'
                sh 'bundle exec cap qa deploy'
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
