# etture/ybigta_img_spark:1.2.2
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

## To run: 
- Install Docker
- Instructions:
    - Pull image: `docker pull etture/ybigta_img_spark:1.2.2`
    - Start container: `docker run -d -it -p 8123:8123 --name=ybigta-spark etture/ybigta_img_spark:1.2.2 /bin/bash`
    - Access container: `docker exec -it ybigta-spark /bin/bash`
    - Exit container: `ctrl-p ctrl-q`

## Useful commands (aliased)
- `jupyter-notebook`: start Jupyter Notebook (aliased to `jupyter notebook --allow-root`)
- `spvd`: start supervisord process (aliased to `supervisord -c`, so must enter local .conf file with supervisord config)
- `spvc`: enter supervisord dashboard (aliased to `supervisorctl`)
- `hadoop-format`: format Hadoop database
- `hadoop-start`: start Hadoop
- `hadoop-stop`: stop Hadoop
- `hive-metastore`: start Hive metastore
- `pyspark`: start PySpark
