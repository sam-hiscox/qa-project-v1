node {
    def app

    stage('Clone repository') {
        
        checkout scm
    }

    stage('Setup docker') {

         sh "bash setup.sh"
    }

    stage('Build image') {
        
         sh "bash build.sh"
    }  

    stage('Run container') {
        
        sh "bash run.sh"
    }
    }
