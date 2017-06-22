FROM narendocker/test_app:java

COPY . /data/springboot-helloworld
WORKDIR /data/springboot-helloworld

RUN ["mvn", "clean", "install"]

EXPOSE 8080

ENTRYPOINT ["/usr/java/latest/bin/java", "-jar", "/data/springboot-helloworld/target/*.jar"]

