pipeline {
    agent any
    tools{
        maven 'LocalMaven'
    }
    stages{
        stage('Compile'){
            steps{
                    sh 'echo "Currently building our app..."'
                    sh 'mvn clean compile'
            }
        }
        stage('Test'){
            steps{ 
                    sh 'mvn test'
            }
        }
        stage('Deploy'){
            steps{
                sh 'mvn deploy'
                deploy adapters: [tomcat8(credentialsId: 'd225bba5-dcc6-4f28-9a59-55dd5e9fa26b', path: '', url: 'http://127.0.0.1:8082/')], contextPath: '/continuousintegration', onFailure: false, war: '**/*.war'
        }
        }
    }
}