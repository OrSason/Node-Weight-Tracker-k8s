pipeline {
  agent {label 'slave'}
  stages{
    stage('Installing dependencies') {
      steps {
        sh 'npm install'
      }
    }
    /*
     stage('package'){
            steps{
              zip zipFile: "${BUILD_NUMBER}.zip", exclude: "*.zip"
                zip zipFile: "latest.zip", exclude: "*.zip", overwrite: true
                archiveArtifacts artifacts: "latest.zip", followSymlinks: false
            }
        }
        */
  }
}
