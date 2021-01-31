FROM alpine:3.12
USER root

RUN apk update
RUN apk add vsftpd
RUN apk add openssl
RUN apk add vsftpd

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/vsftpd.key -out /etc/ssl/certs/vsftpd.crt -subj '/C=FR/ST=75017/L=Paris/O=42/CN=localhost'
RUN chmod 755 /etc/ssl/certs/vsftpd.key
#need to check that path
# not in minikube ssh

EXPOSE 21 21000-21010

COPY ./vsftpd.conf /tmp/vsftpd.conf
COPY ./install.sh /tmp
RUN chmod +x /tmp/install.sh

#ENTRYPOINT ["/tmp/install.sh"]
CMD /install.sh 

#if "docker run"
# you get freeze
# even EOF does not work
