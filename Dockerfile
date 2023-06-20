FROM tomcat:8.0-alpine
COPY target/Trips-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/app.war
CMD ["catalina.sh", "run"]
