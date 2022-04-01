pipeline {
  environment {
    registry = "tyitzhak/spring-petclinic-hub"
    registryCredential = 'docker-hub'
    dockerImage = ''
  }
  agent any
  tools {
    maven 'MavenTest'
  } 
  stages {
    stage('Git') {
      steps {
        git 'https://github.com/talitz/spring-petclinic-jenkins-pipeline.git'
      }
    }
    stage('Sonarscan') {
        environment {
            scannerHome = tool 'MyScanner'
        }
        steps {
            withSonarQubeEnv('MySonar') {
                sh 'mvn sonar:sonar'
            }
        }
    }
    stage('Compile') {
       steps {
         sh 'mvn compile' //only compilation of the code
       }
    }
    stage('Test') {
      steps {
        sh '''
        mvn clean install
        ls
        pwd
        ''' 
        //if the code is compiled, we test and package it in its distributable format; run IT and store in local repository
      }
    }
  }
}