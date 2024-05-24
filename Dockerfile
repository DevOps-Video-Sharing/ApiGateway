# FROM openjdk:11-jre-slim
# COPY target/api-gateway-0.0.1-SNAPSHOT.jar /app/api-gateway.jar
# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "/app/api-gateway.jar"]


# Use a base image with JDK 17
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file
COPY target/api-gateway-0.0.1-SNAPSHOT.jar api-gateway.jar

# Expose the port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "api-gateway.jar"]
