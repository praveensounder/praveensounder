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
         subject: "vpcreg",
         body: "VPC created Success fully"
      attachmentsPattern:C:\Windows\system32\config\systemprofile\AppData\Local\Jenkins\.jenkins/jobs/vpccreation/builds/36/log
        
    }
}
      stage('save log build') {
steps {
echo "$JENKINS_HOME/jobs/$JOB_NAME/builds/${BUILD_NUMBER}/log"

echo "$BUILD_URL/consoleText"
}
}
    }
}
