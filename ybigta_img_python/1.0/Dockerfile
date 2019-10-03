# ubuntu install and initialize
FROM ubuntu:18.04
MAINTAINER etture@gmail.com
RUN apt-get -y -qq update && \
    apt-get install -y -qq wget vim tmux git htop sudo

# install anaconda
RUN mkdir /root/downloads && mkdir /root/work
WORKDIR /root/downloads
RUN wget https://repo.continuum.io/archive/Anaconda3-5.3.1-Linux-x86_64.sh && \
    bash Anaconda3-5.3.1-Linux-x86_64.sh -b

# bash settings
COPY ./.bashrc /root
COPY ./.bash_profile /root
COPY ./.bash_aliases /root
COPY ./.profile /root

# Jupyter config
WORKDIR /root
RUN mkdir .jupyter
COPY ./jupyter_notebook_config.py /root/.jupyter/
