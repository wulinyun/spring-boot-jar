FROM java:8
ADD target/springboot-test-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENTRYPOINT ["java","-jar","/app.jar"]