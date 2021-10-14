FROM ubuntu:latest


ARG DEBIAN_FRONTEND=noninteractive 

USER root

RUN cd test/

RUN echo hola.sh
