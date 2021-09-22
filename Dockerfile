FROM tomcat:9-jre8-openjdk-slim-buster

ADD java-online-banking.war /usr/local/tomcat/webapps/

EXPOSE 8080
