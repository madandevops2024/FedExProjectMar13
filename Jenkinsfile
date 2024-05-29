pipeline {
    agent {
        label 'tomcat-node'
    }

    tools {
        // Install the Maven version configured as "maven396" and add it to the path.
        maven "maven396"
    }

    stages {
        stage('Git Clone') {
            steps {
               git branch: 'main', url: 'https://github.com/madandevops2024/FedExProjectMar13.git'
            }
        }
        
        stage('Build') {
            steps {
               sh 'mvn clean package'
            }
        }    
    }
}
