FROM eclipse-temurin:17-jdk-alpine

# Set app directory
ENV APP_HOME=/usr/src/app
WORKDIR $APP_HOME

# Copy the JAR file
COPY app/*.jar app.jar

# Expose port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]
