# Use official Java 17 base image
FROM eclipse-temurin:17-jdk

# Set working directory inside the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/*.jar app.jar

# Expose port 5000 (same as configured in application.properties)
EXPOSE 3000

# Force Spring Boot to use port 3000 and bind to all IPs
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=3000", "--server.address=0.0.0.0"]
