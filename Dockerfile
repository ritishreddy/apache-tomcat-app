FROM openjdk:8-jre-alpine

WORKDIR /app
COPY target/*.war  app.war

CMD ["java", "-jar", "sample-java-app-1.0-SNAPSHOT.jar"]
