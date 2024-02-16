pipeline {
  agent any
  stages {
    stage ('Install Dependencies') {
      steps {
        script {
         sh 'npm install'
        }
      }
    }
    stage('Deploy NodeJS App'){
      steps{
        sh 'npm run build'
      }
    }
  }
}
