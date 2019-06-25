pipeline {
    agent any

    stages {
        stage('Source') { //Get code
            steps { //Get code from Git Repository
		git 'https://github.com/VenkateshSarivisetty/DevOpsClassCodes.git'
            }
        }
        stage('Compile') { //Compile and do the unit testing
		 tools {
		    maven 'Apache Maven 3.5.0'
			}
            steps { // run maven to execute compile and unit testing
               bat 'mvn compile
	       bat 'mvn test'
            }
        }
    }
}
