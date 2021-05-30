
  
  pipeline { 
  environment {
    registry = "ors09/wtapp2"
    registryCredential = 'dockerAc'
    dockerImage = ''
  } 
  
  agent {label 'slave'}
  
  stages {
  
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":latest"
        }
      }
    }
    
    stage('Push Image to registry') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
   
      stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:latest"
      }
    }
   
    
   
      stage('Trigger cd job') {
      steps{
        build job: 'k8s-cd', propagate: true, wait: true
      }
    }
    
  }
  
}

