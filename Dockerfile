FROM adoptopenjdk/openjdk8:x86_64-alpine-jre8u232-b09
ARG JAR_FILE=target/learnKubernetes-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} hello1.jar
ENTRYPOINT ["java", "-jar", "hello1.jar"]
EXPOSE 8081