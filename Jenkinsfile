def agentLabel
if (BRANCH_NAME == 'main') {
    agentLabel = 'master'
} else {
    agentLabel = ''
}

pipeline {
    agent { label agentLabel }

    stages {
        stage('generate code') {
            steps {
                sh 'jhipster import-jdl it-rex.jdl'
            }
        }
    }
}
