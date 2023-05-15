# Use the base image with OpenJDK
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the necessary files to the container
COPY target/*.jar /app/app.jar

# Expose the port on which your application listens
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "app.jar"]
