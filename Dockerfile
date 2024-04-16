FROM amazoncorretto:17

COPY sale-0.0.1-SNAPSHOT.jar /app/test.jar
COPY entrypoint.sh /app/entrypoint.sh

ENV APP_HOME /app
EXPOSE 8081
VOLUME /app/upload

WORKDIR $APP_HOME

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]