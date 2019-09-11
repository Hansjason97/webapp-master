pipeline {
    agent any
    tools{
        maven 'LocalMaven'
    }
    stages{
        stage('Compile'){
            steps{
                    bat 'mvn clean compile'
                
            }
        }
        stage('Test'){
            steps{
                    echo 'Test are running here ...'
                    bat 'mvn test'
                
            }
        }
        stage('Deploy'){
            steps{
                bat 'mvn deploy'
                deploy adapters: [tomcat8(credentialsId: 'd225bba5-dcc6-4f28-9a59-55dd5e9fa26b', path: '', url: 'http://192.168.19.128:8082/')], contextPath: '/continuousintegration', onFailure: false, war: '**/*.war'            
                }
        }
    }
}