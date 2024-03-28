pipeline {
   agent any
   
   tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "Maven 3.9.6"
   }
	
   stages {
	 stage('Github') {
		steps {
		   // Get some code from a GitHub repository
           git branch: 'main', url: 'https://github.com/madandevops2024/FedExProjectMar13.git'
           
           script {
			  try {
				sh 'make r'
		      } catch(Exception ex) {
				   echo 'In catch block, something went wrong in stage: Github'
		        }
		   }
		}
	 }
	 
	 stage('Build') {
		steps {
		   // Run Maven on a Unix agent.
           sh "mvn -Dmaven.test.failure.ignore=true clean package"
		}
	 }	 
   }
   
   post {
       always {
           echo "Always step has been executed."
       }
       
       success {
           echo "Success step has been executed."
       }
       
       failure {
           echo "Failure step has been executed."
       }
   }
}
