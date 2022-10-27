node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Setup docker') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

         sh "bash setup.sh"
    }

    stage('Build image') {
        
         sh "bash build.sh"
    }  

    stage('Run container') {
            app.build("latest")
        }
    }
