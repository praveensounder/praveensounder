pipeline {
    agent any

    stages {
       stage ('Terraform Plan') {
    sh 'terraform init'
    sh 'terraform plan'
  }

  stage ('Terraform Apply') {
    sh 'terraform apply -auto-approve'
  }
    }
}
