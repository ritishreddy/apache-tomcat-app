FROM openjdk:8-jre-alpine

WORKDIR /app

# Build the Spring Boot application before running the Docker build
RUN mvn clean compile war:war

# Copy the compiled Spring Boot WAR file into the container
COPY target/*.war app.war

CMD ["java", "-jar", "app.war"]
