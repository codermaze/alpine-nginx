FROM alpine:3.8
#FROM nginx:1.11.4-alpine

RUN apk add --update nginx && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /tmp/nginx/client-body && \
    mkdir -p /etc/nginx/sites-enabled

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/sites-enabled/default
COPY website /var/www


CMD ["nginx", "-g", "daemon off;"]
