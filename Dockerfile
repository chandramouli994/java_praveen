FROM openjdk:8-jdk-alpine
ENV PORT 5000
EXPOSE 5000
COPY /root/.jenkins/workspace/Hello-World-Kube/target/jb-hello-world-maven-0.1.0.jar /opt/jb-hello-world-maven-0.1.0.jar
WORKDIR /opt
CMD ["java", "-jar", "/opt/jb-hello-world-maven-0.1.0.jar"]
