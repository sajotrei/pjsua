# vim:set ft=dockerfile:
FROM alpine:latest

LABEL maintainer="Andrius Kairiukstis <k@andrius.mobi>"

RUN apk add --update --no-cache pjsua \
 && rm -rf /var/cache/apk/* \
           /tmp/* \
           /var/tmp/*

COPY pjsua.conf           /pjsua.conf
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
