# Pull custom ubuntu image with Anaconda, Jupyter, JDK8, Scala, gcc, and Hadoop installed
FROM etture/ybigta_img_hadoop:1.2
MAINTAINER etture@gmail.com
WORKDIR /root

# install py4j
RUN /root/anaconda3/bin/pip install -q py4j

# install Spark
RUN wget http://apache.mirror.cdnetworks.com/spark/spark-2.3.4/spark-2.3.4-bin-hadoop2.7.tgz && \
    tar xvzf spark-2.3.4-bin-hadoop2.7.tgz && \
    ln -s spark-2.3.4-bin-hadoop2.7 spark && \
    mv spark-2.3.4-bin-hadoop2.7.tgz /root/downloads/

WORKDIR /root/spark/conf
COPY ./spark-env.sh .

# install Hive
WORKDIR /root
RUN wget https://archive.apache.org/dist/hive/hive-2.3.4/apache-hive-2.3.4-bin.tar.gz && \
    tar xvzf apache-hive-2.3.4-bin.tar.gz && \
    ln -s apache-hive-2.3.4-bin hive && \
    mv apache-hive-2.3.4-bin.tar.gz /root/downloads/

WORKDIR /root/hive/conf
COPY ./hive-env.sh .
COPY  ./hive-site.xml .

WORKDIR /root/hive
RUN /root/hive/bin/schematool -dbType derby -initSchema

WORKDIR /root/hadoop
RUN /etc/init.d/ssh start && \
    ./sbin/start-dfs.sh; ./sbin/start-yarn.sh && \
    ./bin/hdfs dfs -mkdir -p /tmp/hive && ./bin/hdfs dfs -mkdir -p /user/hive/warehouse && \
    ./bin/hdfs dfs -chmod g+w /tmp && ./bin/hdfs dfs -chmod 777 /tmp/hive && \
    ./bin/hdfs dfs -chmod g+w /user/hive && ./bin/hdfs dfs -chmod g+w /user/hive/warehouse && \
    ./sbin/stop-yarn.sh; ./sbin/stop-dfs.sh

RUN cp /root/hive/conf/hive-site.xml /root/spark/conf/

WORKDIR /root
COPY ./.bashrc .
COPY ./.bash_aliases .
