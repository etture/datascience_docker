# ubuntu install and initialize
FROM etture/ybigta_img:1.0
MAINTAINER etture@gmail.com
WORKDIR /root

RUN apt-get -y -qq update

# bash settings
COPY ./.bashrc /root
COPY ./.bash_profile /root
COPY ./.bash_aliases /root
COPY ./.profile /root

# install supervisord
RUN yes | /root/anaconda3/bin/pip install supervisor
RUN mkdir supervisord
COPY ./supervisord.conf.temp /root/supervisord/
