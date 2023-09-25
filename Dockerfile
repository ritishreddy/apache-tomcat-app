FROM openjdk:8-jre-alpine

WORKDIR /app

# Copy the compiled Spring Boot WAR file into the container
COPY target/sample-java-app*.jar /usr/local/tomcat/webapps/sample-java-app.jar
