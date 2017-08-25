FROM project42/s6-alpine

RUN apk add --no-cache nginx && \
mkdir /tmp/nginx

COPY container-files /

EXPOSE 80
