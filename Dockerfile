# ---------- STAGE 1: Build the WAR using Maven ----------
FROM maven:3.9.6-eclipse-temurin-17 AS builder

WORKDIR /app

# Copy source code
COPY . .

# Build WAR
RUN mvn clean package -DskipTests


# ---------- STAGE 2: Run app on Tomcat ----------
FROM tomcat:9.0-jdk17-temurin

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR from builder stage
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/JavaLoginPracticeApp.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
