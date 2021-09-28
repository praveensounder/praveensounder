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
        
    }
}
      stage('save log build') {
steps {
script {
def logContent = Jenkins.getInstance()
.getItemByFullName(env.JOB_NAME)
.getBuildByNumber(
Integer.parseInt(env.BUILD_NUMBER))
.logFile.text
// copy the log in the job's own workspace
writeFile file: "buildlog.txt", text: logContent
}
}
}
    }
}
