FROM openjdk:8-jdk-alpine
ENV PORT 5000
EXPOSE 5000
COPY target/*.jar /opt/jb-hello-world-maven-0.1.0.jar
WORKDIR /opt
CMD ["java", "-jar", "jb-hello-world-maven-0.1.0.jar"]
