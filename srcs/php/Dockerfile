FROM alpine
MAINTAINER Ap Rey <apreymon@student.42.fr>

RUN apk update && apk upgrade
RUN apk add openrc \
&& apk add wget php7 php7-fpm \
php7-opcache php7-gd php7-mysqli \
php7-zlib php7-curl php7-mbstring \
php7-json php7-session

RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz \
&& tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz \
&& rm phpMyAdmin-5.0.2-all-languages.tar.gz

RUN mkdir -p /var/www/localhost/phpmyadmin/
#does not exist in pod but OK in container

COPY ./config.inc.php /tmp
## is not in pod but OK in container

EXPOSE 5000
COPY ./install.sh ./
#CMD sh install.sh #for containers only tests
CMD ["sh", "install.sh"]
