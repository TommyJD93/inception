FROM alpine:3.17.5

COPY ./tools/setup.sh /usr/local/bin/

RUN apk add nginx openssl apache2-utils
RUN mkdir -p /etc/ssl/
RUN mkdir -p /etc/nginx/

COPY ./tools/setup.sh /usr/local/bin/

ENTRYPOINT ["/bin/sh", "/usr/local/bin/setup.sh"]

EXPOSE 443
