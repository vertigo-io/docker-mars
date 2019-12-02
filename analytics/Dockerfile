FROM java:8
COPY ./bin/analytics-server-0.6.jar /usr/app/bin/
COPY ./conf/log4j2.xml /usr/app/conf/
EXPOSE 4562
ENTRYPOINT ["java", "-cp", "/usr/app/bin/analytics-server-0.6.jar", "-Djava.awt.headless=true", "io.vertigo.analytics.server.AnalyticsServerStarter", "log4j2", "4562", "/usr/app/conf/log4j2.xml" ]
