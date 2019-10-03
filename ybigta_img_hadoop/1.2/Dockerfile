# Pull custom ubuntu image with Anaconda and Jupyter installed (+Supervisord)
FROM etture/ybigta_img_python:1.2
MAINTAINER etture@gmail.com
WORKDIR /root

# bash settings
COPY ./.bashrc /root
COPY ./.bash_profile /root
COPY ./.bash_aliases /root
COPY ./.profile /root

# install JDK8
RUN apt-get -y -qq install openjdk-8-jdk

# install Scala
RUN apt-get -y -qq install scala

# install gcc, g++, make
RUN apt-get -y -qq install gcc g++ make

# install profobuf
WORKDIR /usr/local
RUN wget https://github.com/google/protobuf/releases/download/v2.6.1/protobuf-2.6.1.tar.gz
RUN ["tar", "xvzf", "protobuf-2.6.1.tar.gz"]
WORKDIR /usr/local/protobuf-2.6.1
RUN ./configure && make -s && make install && ldconfig

# install Hadoop
WORKDIR /root
RUN wget https://archive.apache.org/dist/hadoop/core/hadoop-2.9.0/hadoop-2.9.0.tar.gz
RUN tar xvzf hadoop-2.9.0.tar.gz
RUN ln -s hadoop-2.9.0 hadoop && mv hadoop-2.9.0.tar.gz /root/downloads
WORKDIR /root/hadoop/etc/hadoop
COPY ./hadoop-env.sh .
COPY ./masters .
COPY ./core-site.xml .
COPY ./hdfs-site.xml .
COPY ./mapred-site.xml .
COPY ./yarn-site.xml .
RUN /root/hadoop/bin/hdfs namenode -format

# install SSH and generate keygen
WORKDIR /root
RUN apt-get -y -qq install openssh-server
RUN ssh-keygen -t rsa -P '' -f /root/.ssh/id_rsa
RUN cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
COPY ./config /root/.ssh/
RUN /etc/init.d/ssh start


