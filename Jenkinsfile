pipeline{
    agent any
    stages{
        stage('Checkout'){
            steps{
               git branch: 'main', url: 'https://github.com/melinnehay/webbapp'
            }
        }
        stage('Melinne_Hay Build Docker Image'){
            steps{
                script{
                    sh 'docker build -t melinnehay/webapp:v1 .'
                }
            }
        }
        stage('Melinne_Hay Login Docker Hub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                        sh 'docker login -u melinnehay -p ${dockerhubpwd}'
                    }
                }
            }
        }
        stage('Melinne_Hay Push Docker Image'){
            steps{
                script{
                    sh 'docker push melinnehay/webapp:v1'
                }
            }
        }
    }
}
