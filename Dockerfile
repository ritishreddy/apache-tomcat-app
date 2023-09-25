FROM openjdk:8-jre-alpine

WORKDIR /app

# Build the Spring Boot application before running the Docker build
RUN mvn clean compile package

# Copy the compiled Spring Boot JAR file into the container
COPY target/sample-java-app-1.0-SNAPSHOT.jar .

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "sample-java-app-1.0-SNAPSHOT.jar"].
