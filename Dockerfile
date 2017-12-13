FROM jbonachera/alpine

RUN apk -U add nginx && \
    rm -rf /var/cache/apk/* && \
    mkdir /run/nginx
COPY config.template /etc/nginx/conf.d/main.template
COPY entrypoint /sbin/entrypoint
ENTRYPOINT ["/sbin/entrypoint"]

