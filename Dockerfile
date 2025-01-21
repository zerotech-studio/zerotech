FROM alpine:3.19

RUN apk add --no-cache thttpd

COPY src/ /var/www/
WORKDIR /var/www

EXPOSE 80
CMD ["thttpd", "-D", "-h", "0.0.0.0", "-p", "80", "-d", "/var/www", "-u", "nobody", "-l", "-"] 