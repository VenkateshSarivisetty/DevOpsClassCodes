pipeline {
    agent any
	tools{
	   maven 'my maven'
           jdk 'my java'
	}
    stages {
	    stage ('Initilize') {
		    steps {
			sh '''
			   echo "PATH= ${PATH}"
			   echo "M2_HOME= ${M2_HOME}"
			   '''
			}
		} 
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test' 
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml' 
                }
            }
        }
    }
}
