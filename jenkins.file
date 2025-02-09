pipeline {
    agent any 

    stages {
        stage ('Changing File Permission') { 
            steps { 
                sh 'chmod +x build.sh'
            } 
        }

        stage ('Executing the File') { 
            steps { 
                sh './build.sh'
            } 
        }
    }
}
