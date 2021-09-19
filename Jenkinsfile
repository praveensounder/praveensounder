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
		
                python -u pythonadd.py
            }
        }
		stage('success') {
            steps {
                echo 'success'
            }
        }
    }
}
