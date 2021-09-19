pipeline {
    agent any

    stages {
        stage('Message') {
            steps {
                echo 'bild start'
            }
        }
		stage('build') {
            steps {
                python pythonadd.py
            }
        }
		stage('success') {
            steps {
                echo 'success'
            }
        }
    }
}
