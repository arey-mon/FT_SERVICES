FROM alpine
USER root

RUN apk update
RUN apk add vsftpd
RUN apk add openssl
RUN apk add --no-cache vsftpd

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/vsftpd.key -out /etc/ssl/certs/vsftpd.crt -subj '/C=FR/ST=75017/L=Paris/O=42/CN=localhost'
#need to check that path
# not in minikube ssh

#RUN adduser -D -u 1000 files
#not helping

EXPOSE 21 21000-21010

COPY ./install.sh .
CMD ["sh", "./install.sh"]

#if "docker run"
# you get freeze
# even EOF does not work
