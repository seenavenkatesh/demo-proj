FROM eclipse-temurin:17-jdk-alpine

# Set app directory
ENV APP_HOME /usr/src/app
WORKDIR $APP_HOME

# Copy JAR
COPY app/*.jar app.jar

# Expose port
EXPOSE 8080

# Add bash and timezone (optional but helps with MySQL SSL/timezone issues)
RUN apk add --no-cache bash tzdata

# Run the app
CMD ["java", "-jar", "app.jar"]
