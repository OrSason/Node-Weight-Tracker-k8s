pipeline {
  agent any
  stages{
    stage('initialization') {
      steps {
        sh 'curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -'
        sh 'sudo apt-get install -y nodejs'
        
        sh 'npm init -y'
        sh 'npm install'
      }
    }
     stage('package'){
            steps{
                zip zipFile: "latest.zip", exclude: "*.zip", overwrite: true
                archiveArtifacts artifacts: "latest.zip", followSymlinks: false
            }
        }
  }
}
