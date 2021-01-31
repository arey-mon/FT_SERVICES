FROM alpine
USER root

RUN apk update && apk upgrade
RUN apk add mariadb mariadb-client openrc
RUN apk add mysql mysql-client

EXPOSE 3306

COPY ./install.sh .
#CMD ["sh", "./install.sh"]
CMD ./install.sh
