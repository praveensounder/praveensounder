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
		sh 'python --version'
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
