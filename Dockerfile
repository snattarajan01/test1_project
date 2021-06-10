FROM openjdk:8-jdk-alpine
EXPOSE 8080
ARG JAR_FILE=/var/lib/jenkins/jobs/LTI_MCM_Project/workspace/target/spring-boot-web-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]