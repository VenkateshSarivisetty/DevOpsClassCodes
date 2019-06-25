pipeline { 
    agent any  
    stages { 
        stage('checkout'){//checkout the code
        git 'https://github.com/VenkateshSarivisetty/DevOpsClassCodes.git'
        }
        stage('Compile') { 
            tools {
                maven 'Apache Maven 3.5.0'
            }
            steps { // compiling the code
                bat '''
                 mvn compile
                '''
            }
        }
    }
}
