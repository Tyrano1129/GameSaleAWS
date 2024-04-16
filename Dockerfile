FROM amazoncorretto:17

COPY sale-0.0.1-SNAPSHOT.jar /app/GameSaleAWS/sale.jar
COPY entrypoint.sh /app/GameSaleAWS/entrypoint.sh

ENV APP_HOME /app/GameSaleAWS
EXPOSE 8081
VOLUME /app/GameSaleAWS/upload

WORKDIR $APP_HOME

RUN chmod +x /app/GameSaleAWS/entrypoint.sh

ENTRYPOINT ["/app/GameSaleAWS/entrypoint.sh"]