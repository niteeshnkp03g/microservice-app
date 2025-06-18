pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/niteeshnkp03g/microservice-app.git'
      }
    }

    stage('Build with Maven') {
      steps {
        sh 'mvn clean package'
      }
    }

    stage('Docker Build') {
      steps {
        sh 'docker build -t microservice-app .'
      }
    }

    stage('Docker Run') {
      steps {
        sh 'docker run -d --rm -p 8081:8080 microservice-app || true'
      }
    }
  }
}

