FROM maven:3.6.3-jdk-11-slim AS stage1
WORKDIR /home/app
COPY . /home/app/
RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:11-jdk
EXPOSE 5000
COPY --from=stage1 /home/app/target/*.jar hello-world.jar
ENTRYPOINT ["sh", "-c", "java -jar /hello-world.jar"]
