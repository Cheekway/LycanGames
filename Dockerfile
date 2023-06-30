# Use a base image with Java installed
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file to the container
COPY target/LycanGames.jar /app/LycanGames.jar

# Expose the port on which the application will run
EXPOSE 8080

# Set the entry point command to run the application
CMD ["java", "-jar", "LycanGames.jar"]