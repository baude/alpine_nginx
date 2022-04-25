FROM docker.io/library/alpine:latest
RUN apk update && apk add nginx && mkdir -p /run/nginx && apk add curl shadow bind-tools tcpdump
EXPOSE 80
COPY default.conf  /etc/nginx/http.d/
CMD ["nginx", "-g", "daemon off;"]
HEALTHCHECK --interval=1m --timeout=3s CMD curl -f http://localhost/ || exit 1
