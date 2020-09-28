FROM ubuntu:latest


ARG DEBIAN_FRONTEND=noninteractive 

USER root

RUN apt-get -qqy update && apt-get upgrade -y \
    openssh-server \
    mysql-server \
    vim \ 
    curl

RUN /etc/init.d/mysql start

EXPOSE 3306 2222


ENTRYPOINT [ "mysqld" ]
