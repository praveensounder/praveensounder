pipeline {
    agentany
    stages {
        stage('Message') {
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
