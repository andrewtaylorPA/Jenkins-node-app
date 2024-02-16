pipeline {
  agent any
  stages {
    stage ('Cleanup') {
      steps {
        script {
          sh 'docker stop nodejs-project || true'
          sh 'docker rm nodejs-project || true'
          sh 'docker rmi nodejs-project || true'
        }
      }
    }
    stage ('build') {
      steps {
        script {
         sh 'docker build -t nodejs-project:${BUILD_NUMBER} .'
        }
      }
    }
    stage ('run') {
      steps {
        script {
         sh 'docker run -p 80:80 --name nodejs-project -d nodejs-project:${BUILD_NUMBER}'
        }
      }
    }
  }
}
