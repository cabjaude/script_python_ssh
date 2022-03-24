pipeline {
  agent {
    docker { image 'python:3-slim' }
  }
  stages {
    stage('Test') {
      steps {
        sh 'hostname'
      }
    }
  }
}
