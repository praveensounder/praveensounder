pipeline {
    agent any

    stages {
       stage('Terraform Plan') {
           steps {
    bat 'terraform init'
    bat 'terraform plan'
  }
       }

  stage ('Terraform Apply') {
      steps {
    bat 'terraform apply -auto-approve'
  }
  }
  stage ('Notification') {
      steps {
    echo "Sent mail notification"
    mail from: "praveensounder05@gmail.com",
         to: "praveensounder98@gmail.com",
         subject: "vpc",
         body: "VPC created Success fully"
        
    }
}
    }
}
