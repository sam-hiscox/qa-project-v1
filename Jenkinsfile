node {
    def app

    stage('Clone repository') {
        
    checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [[$class: 'CleanBeforeCheckout', deleteUntrackedNestedRepositories: true]], userRemoteConfigs: [[url: 'https://github.com/its-imba/qa-project-v1.git']]])
    }
    
    stage('Modify file permissions') {
    sh "chmod -R +x *"
    sh "ls -l"
    }
    
    stage('Setup docker') {
         sh "chmod +x setup.sh"
         sh "bash setup.sh"
    }

    stage('Build image') {
        
         sh "bash build.sh"
    }  

    stage('Run container') {
        
        sh "bash run.sh"
    }
}
