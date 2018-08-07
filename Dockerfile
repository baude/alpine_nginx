FROM docker.io/library/alpine:latest
RUN apk update && apk add nginx && mkdir -p /run/nginx
EXPOSE 80
COPY default.conf  /etc/nginx/conf.d/
CMD ["nginx", "-g", "daemon off;"]
