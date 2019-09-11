pipeline {
    agent any

    stages{
        stage('Compile'){
            steps{
            withMaven(jdk: 'Java 1.8.0', maven: 'LocalMaven') {
                    bat 'mvn clean compile'
                }
            }
        }
        stage('Test'){
            steps{
                withMaven(jdk: 'Java 1.8.0', maven: 'LocalMaven') {
                    bat 'mvn test'
                }
            }
        }
        stage('Deploy'){
            steps{
                deploy adapters: [tomcat7(credentialsId: 'e3bdde47-d7e8-415a-aa2c-cc58891d743d', path: '', url: 'http://localhost:8080/')], contextPath: '/home', onFailure: false, war: '**/*.war'
            }
        }
    }
}