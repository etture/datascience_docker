# ubuntu install and initialize
FROM etture/ybigta_img_crawling:1.0
MAINTAINER etture@gmail.com
WORKDIR /root

RUN apt-get -y -qq update

# install JDK for JVM use
RUN dpkg --add-architecture i386 && \
    apt-get -y install libc6-i386 openjdk-8-jdk
