FROM alpine
USER root

RUN apk update && apk upgrade
RUN apk add mariadb mariadb-client openrc

RUN apk add mysql mysql-client

EXPOSE 3306

CMD sh ./install.sh
