pipeline {
    agent any

    tools {
        maven 'MAVEN3'
        jdk 'JDK'
    }

    environment {
        DOCKERHUB_PWD=credentials('DockerHubPWD')
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/jque4/COMP367_Lab3_Q1.git', branch: 'main'
            }
        }

        stage('Build Maven Project') {
            steps {
                script {
                    withMaven(jdk: 'JDK', maven: 'MAVEN3') {
                        bat 'mvn clean compile verify'
                    }
                }
            }
        }

        stage('Code Coverage') {
            steps {
                script {
                    jacoco(execPattern: '**/target/jacoco.exec')
                }
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    docker.build("jque4/lab3:build${env.BUILD_NUMBER}")
                }
            }
        }

        stage('Docker Login') {
            steps {
                script {
                    bat 'docker login -u jque4 -p "%DOCKERHUB_PWD%"'
                }
            }
        }

        stage('Docker Push') {
            steps {
                script {
                    bat 'docker push jque4/lab3:build%BUILD_NUMBER%'
                }
            }
        }
    }
}
