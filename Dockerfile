FROM openjdk:8-jre-alpine

WORKDIR /app

# Copy the compiled Spring Boot WAR file into the container
COPY target/*.war app.war

CMD ["java", "-jar", "app.war"]
