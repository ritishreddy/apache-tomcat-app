FROM openjdk:8-jre-alpine

WORKDIR /app
RUN mvn clean compile package
COPY target/sample-java-app*.war        /var/lib/jenkins/workspace/apache-tomcat-app/target/sample-java-app-1.0-SNAPSHOT.war

CMD ["java", "-jar", "sample-java-app-1.0-SNAPSHOT.jar"]
