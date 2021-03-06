FROM alpine:3.8

RUN apk add --no-cache tini busybox-extras

WORKDIR /var/www/html

ENTRYPOINT ["/sbin/tini", "-g", "--"]

COPY rootfs/ /
COPY / /git # test to try include snapshot of the build in the container

CMD [ "httpd", "-f", "-h", "/var/www/html", "-p", "80", "-c", "/etc/httpd.conf" ]

EXPOSE 80
RUN echo "docker build --tag debug5 . ; docker run --rm -p 85:80 -dti debug5"
HEALTHCHECK --interval=5s --timeout=1500ms --start-period=10s --retries=3 CMD ["/docker-healthcheck.sh"]
