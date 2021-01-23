FROM alpine
USER root

#ADD SERVICES
RUN apk update
RUN apk add vim
RUN apk add openssl openssh
RUN apk add openrc --no-cache
RUN apk add nginx

# We create SSH user and SSL key
RUN adduser -D user
RUN ssh-keygen -A
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/localhost.key -out /etc/nginx/localhost.crt -subj '/C=FR/ST=75017/L=Paris/O=42/CN=localhost'
# installation is OK but when accessing nginx_pod, there is no key files

#I don't think any of those commands are right
 #COPY install.sh /tmp
 #COPY nginx.conf /etc/nginx/nginx.conf 
#path OK, need VIM to check it out

EXPOSE 22 80 443

CMD sh ./install.sh


#NGINX CONTAINER
#in dir tmp : 0 content
#nginx.conf path is : /etc/nginx/
#default.conf path is : /etc/nginx/conf.d/
