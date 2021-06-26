# project42/https-redirect

[![pipeline status](https://git.jordanclark.us/devops/https-redirect-docker/badges/master/pipeline.svg)](https://git.jordanclark.us/devops/https-redirect-docker/commits/master)

## Introduction
There are a number of instances where we would like to simply redirect an HTTP request to HTTPS.  That is what this docker image provides.  The image listens for HTTP requests on port 80 and rewrites the URL request to HTTPS.

### Tags

| Tag | Description |
|---|---|
| latest | The most current build.  Images based on latest may change often an possibly could break.  Test your images |

### Issues

I'm sure there are some but currently I'm unaware of current issues.  If you find an issue please let me know on [GitHub](https://github.com/p42/https-redirect-docker/issues)

### Prerequisites

A working docker daemon would be helpful to utilize this image.

## How to use this image

This image provides a simple service that redirects and HTTP request to the same URL over HTTPS.

### Usage

###### Running a quick alpine linux container

~~~
docker run -d -it -p80:80 project42/https-redirect:latest
~~~

This will present you with a shell on fresh container that will stop and remove itself when you exit the container.

###### Dockerfile that is based of of this image.

~~~
FROM project42/https-redirect:latest

RUN apk --no-cache --update upgrade && \
apk add --no-cache rsync

ENTRYPOINT ["/init"]
~~~

## Configuration

### Configuration Parameters
| Environment | Description |
| --- | --- |
| TZ | Sets the container Timezone; example: CST6CDT default: UTC |  

## Maintenance

### Shell Access

This image includes the sh shell and when running in detached mode can be connected to with:

~~~
docker exec -ti <container> sh
~~~


## References

Maintainer: [https://jordanclark.us](https://jordanclark.us)

Maintainer's git repo: [https://git.jordanclark.us/devops/https-redirect-docker](https://git.jordanclark.us/devops/https-redirect-docker)

Github Issues: [https://github.com/p42/https-redirect-docker/issues](https://github.com/p42/https-redirect-docker/issues)

Alpine Linux: [https://www.alpinelinux.org](https://www.alpinelinux.org)

s6-overlay: [https://github.com/just-containers/s6-overlay](https://github.com/just-containers/s6-overlay)

s6 supervisor: [http://www.skarnet.org/software/s6/index.html](http://www.skarnet.org/software/s6/index.html)
