pipeline {
  agent { dockerfile true }
  stages {
    stage('Test') {
      steps {
        sh 'python3 /home/python/script_ssh_python.py'        
      }
    }
  }
}
