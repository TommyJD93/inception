FROM alpine:3.17

EXPOSE 3306

RUN apk add mysql mysql-client

COPY tools/setup.sh /user/local/bin/

RUN mkdir /run/mysqld

ENTRYPOINT ["/bin/bash", "/usr/local/bin/setup.sh"]

