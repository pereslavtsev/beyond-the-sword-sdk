FROM ubuntu:16.04 AS wine

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND teletype

RUN apt-get update \
    && apt-get install -y software-properties-common

RUN dpkg --add-architecture i386 \
    && add-apt-repository ppa:ubuntu-wine/ppa \
    && apt-get update \
    && apt-get -y install wine1.8:i386

