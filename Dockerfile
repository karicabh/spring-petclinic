FROM maven as builder
COPY . /usr/src/petclinic/
WORKDIR /usr/src/petclinic/
RUN mvn package
#CMD ["mvn", "clean", "package"]
FROM openjdk:8 as deploy
COPY --from=builder /usr/src/petclinic/target/spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar /usr/src/petclinic/
WORKDIR /usr/src/petclinic
CMD ["java", "-jar", "spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar"]
