pipeline {
    agent any

    stages {
       stage ('Terraform Plan') {
    sh 'terraform init'
    sh 'terraform plan -target vpc.tf'
  }

  stage ('Terraform Apply') {
    sh 'terraform apply -target vpc.tf -auto-approve'
  }
    }
}
