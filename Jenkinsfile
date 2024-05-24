pipeline{
    agent{
        label "slave"
    }
    tools {
        maven '3.5.0'
    }
    stages {
        stage ('build') {
            steps {
                git branch: 'master', url: 'https://github.com/morbit1997/java-mvn-hello-world-web-app.git'
                sh 'mvn eclipse:eclipse'
                sh 'mvn clean install'
            }
        }
        stage ('deploy to docker') {
            steps {
                sh 'docker build -t webapp:0.1 .'
                sh 'docker run -d -p 8080:8080 --name mywebapp_maven webapp:0.1'
                sh 'docker ps'
            }
        }
    }
}
