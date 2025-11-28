pipeline {
    agent any
    stages {
        stage('Melinne_Hay - Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t melinnehay/melinnehay:v1 .'
                }
            }
        }
        stage('Melinne Hay - Login Docker Hub') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                        sh 'docker login -u melinnehay -p ${dockerhubpwd}'
                    }
                }
            }
        }
        stage('Melinne Hay - Push Docker Image') {
            steps {
                script {
                    sh 'docker push melinnehay/melinnehay:v1'
                }
            }
        }
    }
}
