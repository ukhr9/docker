FROM ubuntu:latest

USER root

RUN apt-get -qqy update && apt-get upgrade -y \
    openssh-server \
    mysql-server \
    vim \ 
    curl

COPY files/sshd_config2222 /etc/ssh/sshd_config2222

RUN mkdir /prueba/sftp && chmod 755 /prueba/sftp
RUN useradd ftpuser -d /prueba/sftp && groupadd sftp2222 & adduser ftpuser sftp2222

EXPOSE 3306 2222


CMD [ "mysqld" ]