# Use a base image with Java 8
FROM openjdk:8-jre-alpine

# Set the working directory
WORKDIR /app

# Assuming your Maven build generates a JAR file in the target directory
COPY target/*.jar app.jar

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "app.jar"]
