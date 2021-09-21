pipeline {
    agent any

    stages {
       stage('Terraform Plan') {
           steps {
    bat 'terraform init'
    bat 'terraform plan -target vpc.tf'
  }
       }

  stage ('Terraform Apply') {
      steps {
    bat 'terraform apply -target vpc.tf -auto-approve'
  }
  }
    }
}
