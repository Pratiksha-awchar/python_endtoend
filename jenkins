
pipeline {
    agent any
    
    stages {
        stage ('SCM checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Pratiksha-awchar/python_endtoend.git'
            }
            
        }
        
        stage ('docker image build') {
            steps {
                sh '/usr/bin/docker image build -t pratikshaawchar123/simple5 .'
            }
        }
        
        stage ('Docker Login') {
            steps {
                sh 'echo dckr_pat_JwQa2Y5srKNcC6UJfNPdln_Qhls | /usr/bin/docker login -u pratikshaawchar123 --password-stdin'
            }
        }
        
        stage ('docker image Push') {
            steps {
                sh '/usr/bin/docker image push pratikshaawchar123/simple5'
            }
        }
        
        stage ('Get the Confirmation from user') {
            steps {
                input 'Do you want to deploy this'
            }
        }
        
        stage ('remove existing service') {
            steps {
                sh '/usr/bin/docker service rm service5'
            }
        }
        
        stage ('create docker service') {
            steps {
                sh '/usr/bin/docker service create --name service5 --replicas 2 -p 4848:4848 pratikshaawchar123/simple5'
            }
        }
        
    }
}
