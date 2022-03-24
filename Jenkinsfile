pipeline {
  agent { dockerfile true }
  stages {
    stage('Test') {
      steps {
        sh '/home/python/script_ssh_python.py'        
      }
    }
  }
}
