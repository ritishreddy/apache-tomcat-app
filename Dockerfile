FROM openjdk:8-jre-alpine

COPY target/sample-java-app*.jar /var/lib/docker/tmp/buildkit-mount514627754/target/sample-java-app.jar
