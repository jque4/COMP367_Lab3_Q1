pipeline {
    agent any

    tools {
        maven 'MAVEN3'
    }

    stages {
        stage('Build') {
            steps {
                mvn clean compile
            }

            post {
                success {
                    start "" mvn tomcat7:run
                }
            }   
        }
    }
}