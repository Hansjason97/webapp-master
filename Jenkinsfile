pipeline {
    agent any
    tools{
        maven 'LocalMaven'
    }
    stages{
        stage('Compile'){
            steps{
                    bat 'echo "Currently building our app..."'
                    bat 'mvn clean compile'
            }
        }
        stage('Test'){
            steps{ 
                    bat 'mvn test'
            }
        }
        stage('Deploy'){
            steps{
                bat 'mvn deploy'
                deploy adapters: [tomcat8(credentialsId: 'd225bba5-dcc6-4f28-9a59-55dd5e9fa26b', path: '', url: 'http://192.168.19.128:8082/'), tomcat7(credentialsId: 'e3bdde47-d7e8-415a-aa2c-cc58891d743d', path: '', url: 'http://localhost:8080/')], contextPath: '/continuousintegration', onFailure: false, war: '**/*.war'
        }
        }
    }
}