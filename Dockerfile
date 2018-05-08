FROM openjdk:8
COPY ./target/spring-petclinic* /usr/src/petclicinc
WORKDIR /usr/src/petclicinc
CMD ["java", "-jar", "spring-petclicinc*"]
