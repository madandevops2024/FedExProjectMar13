pipeline {
    agent {
		label 'ansible-node'
	}

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven396"
    }

    stages {
        stage('Github') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/madandevops2024/FedExProjectMar13.git'
            }
        }
        
        stage('Build') {
            steps {
                // Run Maven on a Unix agent.
                sh "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        }
        
        stage('AnsibleController') {
            steps {
                sh 'ansible-playbook task.yml'
            }
        }
    }
}
