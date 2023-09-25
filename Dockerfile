FROM openjdk:8-jre-alpine

WORKDIR /app
RUN mvn clean compile package
COPY /var/lib/jenkins/workspace/apache-tomcat-app/target/sample-java-app-1.0-SNAPSHOT.jar

CMD ["java", "-jar", "sample-java-app-1.0-SNAPSHOT.jar"]
