pipeline {
  agent { dockerfile true }
  stages {
     stage('Initialize'){
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
    stage('Test') {
      steps {
        sh 'python3 /home/python/script_ssh_python.py'        
      }
    }
  }
}
