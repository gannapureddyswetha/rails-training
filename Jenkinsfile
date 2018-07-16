node('docker') {
    stage 'Prepare Container'
    stage 'Install Gems'
    stage 'Prepare Database'
    stage 'Invoke Rake'
    stage 'Security scan'
    stage 'Deploy'
}
node('docker') {
    // .. 'stage' steps removed
    docker.image('rtyler/rvm:2.7.0').inside { 
        rvm 'bundle install' 
        rvm 'bundle exec rake'
    } 
}
