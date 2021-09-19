pipeline {
    agent any

    stages {
        stage('Message') {
            steps {
                echo 'build start'
            }
        }
		stage('build') {
            steps {
		bat 'python --version'   
                sh 'pythonadd.py'
            }
        }
		stage('success') {
            steps {
                echo 'success'
            }
        }
    }
}
