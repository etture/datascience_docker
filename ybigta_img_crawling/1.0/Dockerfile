# ubuntu install and initialize
FROM etture/ybigta_img_python:1.2
MAINTAINER etture@gmail.com
WORKDIR /root

RUN apt-get -y -qq update

# install prerequisites for crawling
RUN apt-get -y install curl unzip xvfb libxi6 libgconf-2-4 gnupg
RUN curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add && \
    echo "deb [arch=amd64]  http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
RUN apt-get -y -qq update && \
    apt-get -y install google-chrome-stable 
RUN wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip && \
    unzip chromedriver_linux64.zip && \
    mv chromedriver /usr/bin/chromedriver && \
    chown root:root /usr/bin/chromedriver && \
    chmod +x /usr/bin/chromedriver && \
    rm chromedriver_linux64.zip
RUN wget https://selenium-release.storage.googleapis.com/3.13/selenium-server-standalone-3.13.0.jar && \
    wget http://www.java2s.com/Code/JarDownload/testng/testng-6.8.7.jar.zip && \
    unzip testng-6.8.7.jar.zip && \
    rm testng-6.8.7.jar.zip 

RUN apt-get -y -qq update && apt-get -y install --reinstall build-essential
RUN apt-get -y install gcc
RUN /root/anaconda3/bin/pip install cvxpy

# install some Python packages (Selenium, KoNLPy, PyMongo)
RUN /root/anaconda3/bin/pip install selenium konlpy pymongo
