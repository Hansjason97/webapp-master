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
<<<<<<< HEAD
                bat 'mvn deploy'
                deploy adapters: [tomcat8(credentialsId: 'd225bba5-dcc6-4f28-9a59-55dd5e9fa26b', path: '', url: 'http://192.168.19.128:8082/')], contextPath: '/continuousintegration', onFailure: false, war: '**/*.war'            
                }
=======
                deploy adapters: [tomcat7(credentialsId: 'e3bdde47-d7e8-415a-aa2c-cc58891d743d', path: '', url: 'http://localhost:8080')], contextPath: '/home', onFailure: false, war: '**/*.war'            }
>>>>>>> parent of 6023f70... fixing the deployment in my jenkinsfile
        }
    }
}