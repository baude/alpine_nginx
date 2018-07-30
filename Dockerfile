FROM docker.io/library/alpine:latest
RUN apk update && apk add nginx && mkdir -p /run/nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
