FROM alpine:3.17.5

COPY ./tools/setup.sh /usr/local/bin/

RUN apk add mysql mysql-client

RUN mkdir /run/mysqld

EXPOSE 3306

ENTRYPOINT ["/bin/sh", "/usr/local/bin/setup.sh"]
