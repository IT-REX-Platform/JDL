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
                sh 'for file in *.jdl; do 
                        jhipster import-jdl $file --force --with-entities 
                    done'
            }
        }
        stage('release') {
            when { allOf { branch 'dev'; triggeredBy 'UserIdCause' } }
            steps {
                sshagent (credentials: ['jenkins']) {
                    echo 'Pushing dev to main'
                    sh 'git push git@github.com:IT-REX-Platform/JDL.git'
                }
            }
        }
    }
}
