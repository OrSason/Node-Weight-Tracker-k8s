pipeline {
  agent any
  stages{
    stage('initialization') {
      steps {
        sh 'curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -'
        sh 'sudo apt-get install -y nodejs'
        
        sh 'npm init -y'
      }
    }
    stage('publish package') {
      steps {
        sh 'npm publish'
      }
    }
  }
}
