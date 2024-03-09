pipeline {
    agent any

    tools {
        maven 'MAVEN3'
    }

    stages {
        stage('Build') {
            steps {
                bat 'mvn clean compile'
            }

            post {
                success {
                    bat 'start "" mvn tomcat7:run'
                }
            }   
        }
    }
}