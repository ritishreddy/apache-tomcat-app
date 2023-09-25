FROM openjdk:8-jre-alpine

COPY target/sample-java-app*.jar /usr/local/tomcat/webapps/sample-java-app.jar
