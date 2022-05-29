FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD p@ssw0rd
ENV MYSQL_DATABASE sample_db
ENV MYSQL_USER sample_user
ENV MYSQL_PASSWORD sample_password
ENV TZ "Asia/Tokyo"

COPY ./docker/db/init.sql /docker-entrypoint-initdb.d/init.sql
