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
         to: "praveensounder05@gmail.com",
         subject: "Terraform build complete"
        
    }
}
    }
}
