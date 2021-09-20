pipeline {
    agent any
    stages {
        stage('start') {
            steps {
                echo 'build start'
            }
        }
		stage('build') {
            steps {
		
                bat 'ck app.py'
            }
        }
		stage('success') {
            steps {
                echo 'success'
            }
        }
    }
}
