FROM tomcat:alpine
COPY ./target/mvn-hello-world.war /usr/local/tomcat/webapps/
