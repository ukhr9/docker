FROM ubuntu:latest

USER root

RUN apt-get -qqy update && apt-get upgrade -y \
    openssh-server \
    mysql-server \
    vim \ 
    curl

RUN mkdir /prueba/sftp && chmod 755 /prueba/sftp
RUN useradd ftpuser -d /prueba/sftp && groupadd sftp2222 & adduser ftpuser sftp2222
 