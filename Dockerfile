FROM tomcat:8.0.20-jre8
EXPOSE 8080
COPY target/shopping-site-web-app.war /usr/local/tomcat/webapps/shopping-site-web-app.war
