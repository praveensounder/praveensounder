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
   mail to: 'praveensounder05@gmail.com',
        
       
        subject: "vpc and s3 uplode",
         body: "VPC created Success fully ${env.BUILD_URL}"
        
    }
}
      stage('save log build') {
steps {
echo "$JENKINS_HOME/jobs/$JOB_NAME/builds/${BUILD_NUMBER}/log"

echo "$BUILD_URL/consoleText"
}
}
        stage('s3 uplode') {
            steps{
              s3Upload(file:'58/log/', bucket:'jenkinreport', path:'jenkinreport/jenkins/')
            }
        }
    }
}
