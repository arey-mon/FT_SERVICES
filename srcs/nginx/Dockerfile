FROM openjdk:8-jdk-alpine
USER root

#ADD SERVICES
RUN apk update
RUN apk add openssl
RUN apk add openssh
RUN apk add openrc --no-cache
RUN apk add nginx

# We create SSH user and SSL key
RUN adduser -D user
RUN ssh-keygen -A
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/localhost.key -out /etc/nginx/localhost.crt -subj '/C=FR/ST=75017/L=Paris/O=42/CN=localhost'
# installation is OK in docker container

# Let's copy config files
COPY ./index.html /var/www/localhost/htdocs
#works in docker container
#but in pod, www/ does not exist

RUN mkdir -p /run/nginx
RUN chmod 777 /run/nginx

EXPOSE 22 80 443

COPY ./install.sh .
#CMD ["sh", "./install.sh"]
ENTRYPOINT ["./install.sh"]
