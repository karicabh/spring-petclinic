FROM ubuntu:16.04
COPY provision.sh /home/
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install git openjdk-8-jdk maven -y
RUN apt-get clean
RUN rm -rf /var/cache/apt/archives
VOLUME /data
RUN /home/provision.sh
CMD ["cp", "spring-petclinic/target/spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar", "/data/"]
