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
                sh 'docker run -it --name tomcat -p 8082:8080 hansjason/tomcatfixed:latest' 
                deploy adapters: [tomcat8(credentialsId: '0c390131-7b29-4ce3-bac9-7d35e49949a6', path: '', url: 'http://127.0.0.1:8082')], contextPath: '/WebApp', war: '**/*.war'
        }
        }
    }
}