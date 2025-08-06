# Use official OpenJDK base image
FROM openjdk:17

# Set working directory inside the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/*.jar app.jar

# Expose port 5000 (same as configured in application.properties)
EXPOSE 5000

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
