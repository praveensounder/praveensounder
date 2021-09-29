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
        
       
        subject: "vpc and s3 uplode gf to ariforti12 ",
         body: "VPC created Successfully ${env.BUILD_URL}"
        
    }
}
      stage('save log build') {
steps {
echo "$JENKINS_HOME/jobs/$JOB_NAME/builds/${BUILD_NUMBER}/log"

echo "$BUILD_URL/consoleText"
}
}
        stage('upload') {
steps {
 
    
  bat 'aws s3 cp C:/Windows/system32/config/systemprofile/AppData/Local/Jenkins/.jenkins/workspace/vpccreation s3://jenkinreport/jenkins/ --recursive --include "*"'
}
}
       
        
    
    }
}
