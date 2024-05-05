# Use a base image with Java and any other dependencies needed to run the Spring Boot application
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory inside the container
WORKDIR /app

# Copy the executable jar file into the container at /app
COPY target/config-service.jar /app/config-service.jar

# Expose the port that the Spring Boot application will listen on
EXPOSE 8888

# Specify the command to run the Spring Boot application when the container starts
CMD ["java", "-jar", "config-service.jar"]
