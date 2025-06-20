
pipeline {
  agent any

  tools {
    maven 'maven-3.9.6'
  }

  environment {
    DOCKER_IMAGE = 'dockerp241/microservice-app'
  }

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
        sh 'docker build -t $DOCKER_IMAGE .'
      }
    }

    stage('Docker Push to DockerHub') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
          sh '''
            echo "$PASSWORD" | docker login -u "$USERNAME" --password-stdin
            docker push $DOCKER_IMAGE
          '''
        }
      }
    }
  }
}

