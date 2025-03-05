pipeline {
    agent any

    tools {
        // Install the Maven version configured as "Maven399" and add it to the path.
        maven "Maven399"
    }

    stages {
        stage('GitHub') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/madandevops2024/FedExProjectMar13.git'     
            }            
        }
		
		stage('Build') {
            steps {                
                // Run Maven on a Unix agent.
                //sh "mvn -Dmaven.test.failure.ignore=true clean package"
				sh "mvn clean package"
            }            
        }
	}	
	
	post {
       failure {
		   echo "One of the stage has failed."
       }
			
       success {
          echo "Successfully all stages are executed."
       }
			
	   always {
	      echo "Job execution completed."
	   }
    }    
}

