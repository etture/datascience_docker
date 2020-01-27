# etture/ybigta_img_spark:1.2.4
https://cloud.docker.com/repository/docker/etture/ybigta_img_spark/general

OS: Ubuntu 18.04
## Installed
- Anaconda (Python 3.7.4)
- Supervisord (4.0.4)
- JDK8
- Scala (2.11.12)
- Py4J (0.10.8.1)
- Hadoop (2.9.0)
- Spark (2.3.4)
- Hive (2.3.4)
- Spylon-Kernel (0.4.1)

## To run: 
- Install Docker
- Instructions:
    - Pull image: `docker pull etture/ybigta_img_spark:1.2.4`
    - Start container: `docker run -d -it -p 8123:8123 -p 4040:4040 --name=ybigta-spark etture/ybigta_img_spark:1.2.4 /bin/bash`
    - Access container: `docker exec -it ybigta-spark /bin/bash`
    - Exit container: `ctrl-p ctrl-q`

## Useful commands (aliased)
- `jupyter-notebook`: start Jupyter Notebook (aliased to `jupyter notebook --allow-root`)
- `spvd`: start supervisord process (aliased to `supervisord -c`, so must enter local .conf file with supervisord config)
- `spvc`: enter supervisord dashboard (aliased to `supervisorctl`)
- `hadoop-format`: format Hadoop database (might mess up Datanode config, better know what you're doing)
- `hadoop-start`: start Hadoop
- `hadoop-stop`: stop Hadoop
- `hive-metastore`: start Hive metastore
- `pyspark`: start PySpark

## Run Hadoop / Spark
- run `hadoop-start` command to start Hadoop processes (Namenode, Datanode, etc...)
- run `hive-metastore` to start the Hive metastore process
- run `pyspark` to start PySpark Jupyter notebook
- run `hadoop-stop` to stop the Hadoop processes
    #### Troubleshooting:
    - If some error occurs regarding Datanode not running, the Datanode and Namenode may be pointing at different clusters (maybe because the Namenode was formatted with `hadoop-format`, while the old Datanode remained)
    - To resolve this, delete the directory containing Datanode data (defined in hdfs-site.xml)
        - In this container, the path for this directory is: `/root/data/dfs/datanode`
        - Command to delete: ```rm -rf /root/data/dfs/datanode```
    - After deleting, run `hadoop-stop` then run `hadoop-start`, and the Datanode should be running properly
    - Example errors: 
        - ```java.io.IOException: Incompatible clusterIDs in /root/data/dfs/datanode: namenode clusterID = CID-9c1d2673-0dca-467f-b668-f84cc9fa0de8; datanode clusterID = CID-cc15bfe0-df74-48e7-873c-296e70a82f8f```
        - ```org.apache.hadoop.ipc.RemoteException(java.io.IOException): File /root/spark/book/2015-summary.json._COPYING_ could only be replicated to 0 nodes instead of minReplication (=1).  There are 0 datanode(s) running and no node(s) are excluded in this operation.```

## Scala in Jupyter Notebook
- Changing to `spylon-kernel` in Jupyter notebook allows you to use Scala
