FROM openjdk:8-jdk-alpine
VOLUME /tmp
#这里 *.jar 包就是后续在cicd pipeline 过程中 mvn 生成的jar包移动到此目录
COPY *.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]