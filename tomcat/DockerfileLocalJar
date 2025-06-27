FROM tomcat:10-jdk17-temurin

COPY ./mars-*.war /usr/local/tomcat/webapps/mars.war

RUN sed -i 's/<Connector /<Connector maxPartCount="-1" /' /usr/local/tomcat/conf/server.xml

COPY ./bin/wait-for-it.sh /usr/app/bin/
COPY ./bin/start.sh /usr/app/bin/
RUN chmod +x /usr/app/bin/*.sh

ENTRYPOINT [ "/usr/app/bin/start.sh" ]
