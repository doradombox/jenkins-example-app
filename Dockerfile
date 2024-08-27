FROM java:8
VOLUME /tmp
EXPOSE 8200
ARG JAR_FILE=target/jenkins-example-app-0.0.1-SNAPSHOT

ADD ${JAR_FILE} app.jar

# 启动镜像自动运行程序
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/urandom","-jar","/app.jar"]