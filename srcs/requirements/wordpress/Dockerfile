FROM alpine:3.17

RUN apk add curl php-fpm php-curl pph-mysqli php-openssl php-dom php-xml

COPY ./tools/steup.sh /usr/local/bin/

ENTRYPOINT ["bin/sh", "/usr/local/bin/setup.sh"]

EXPOSE 9000
