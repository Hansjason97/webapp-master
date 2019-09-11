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
                deploy adapters: [tomcat7(credentialsId: 'e3bdde47-d7e8-415a-aa2c-cc58891d743d', path: '', url: 'http://localhost:8080')], contextPath: '/home', onFailure: false, war: '**/*.war'            }
        }
    }
}