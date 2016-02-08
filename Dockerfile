FROM gliderlabs/alpine

RUN apk-install nginx && mkdir /tmp/nginx

COPY container-files /

CMD nginx

EXPOSE 80
