pipeline {
  agent {
    docker { image 'python:3-slim' }
  }
  stages {
    stage('Test') {
      steps {
        sh 'python3 /home/python/script_ssh_python.py'
      }
    }
  }
}
