FROM tomcat:8.0.20-jre8

COPY target/sample-java-app*.war /usr/local/tomcat/webapps/sample-java-app.war
