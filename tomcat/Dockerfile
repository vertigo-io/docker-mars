FROM maven:3-openjdk-11 as builder

RUN git clone  https://github.com/vertigo-io/vertigo-mars
WORKDIR vertigo-mars
RUN git checkout tags/v3.3.0
RUN mvn install -DskipTests -Dmaven.test.skip=true


FROM tomcat:9-jdk11-openjdk

COPY --from=builder vertigo-mars/target/mars*.war /usr/local/tomcat/webapps/mars.war

COPY ./bin/wait-for-it.sh /usr/app/bin/
COPY ./bin/start.sh /usr/app/bin/
RUN chmod +x /usr/app/bin/*.sh

ENTRYPOINT [ "/usr/app/bin/start.sh" ]
