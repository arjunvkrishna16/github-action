# Use an official OpenJDK runtime as the base image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Install Maven
RUN apt-get update && apt-get install -y maven

# Copy the pom.xml file
COPY pom.xml .

# Build the project (will succeed even without source code)
RUN mvn clean package

# Default command (can be overridden; useful once you add a main class)
CMD ["bash"]
