FROM openjdk:8-jdk-alpine
COPY target/HelloWorld-0.0.1-SNAPSHOT.jar /opt/HelloWorld-0.0.1-SNAPSHOT.jar
WORKDIR /opt
EXPOSE 5000
CMD ["java", "-jar", "HelloWorld-0.0.1-SNAPSHOT.jar"]
