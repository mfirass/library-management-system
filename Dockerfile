# OpenJDK 17 image as base image
FROM openjdk:17-jdk-slim

# Working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/library-management-system-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 8080

# Entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
