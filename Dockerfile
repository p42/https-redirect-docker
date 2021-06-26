FROM project42/s6-alpine:3.14
MAINTAINER Jordan Clark mail@jordanclark.us

RUN apk add --no-cache nginx

COPY container-files /

EXPOSE 80
