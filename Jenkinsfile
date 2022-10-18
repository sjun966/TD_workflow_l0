pipeline {
    agent { label 'master' }
    environment {
        TD_API_KEY = credentials('TD_API_KEY')
    }
    stages {
        stage('build') {
            steps {
                dir ('<workflow directory>') {
                    sh "td -e https://api.treasuredata.com wf push <workflow_name>"   
                }
            }
        }
    }
}