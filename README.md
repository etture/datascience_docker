# datascience_docker
Docker settings (Dockerfile etc.) for data science

Default port open for Jupyter/PySpark access is 8123

## starterpack.sh
- Bash Script to run after initializing Cloud instance
    - AWS EC2, GCP Compute Engine, etc...
- Install Docker, set up basic useful aliases
- To Run:
    - configure chmod: `sudo chmod 774 starterpack.sh`
    - run script: `./starterpack.sh`

## Latest images
- `etture/ybigta_img_python:1.2`: basic Python image with Anaconda
- `etture/ybigta_img_hadoop:1.2`: image with Hadoop
- `etture/ybigta_img_spark:1.2.2`: image with Spark

### [etture/ybigta_img_python:1.2](https://github.com/etture/datascience_docker/tree/master/ybigta_img_python/1.2)
- Size: 4.19 GB
- Pull: `sudo docker pull etture/ybigta_img_python:1.2`
- Run: `sudo docker run -d -it -p 8123:8123 --name=ybigta-python etture/ybigta_img_python:1.2 /bin/bash`
- Exec: `sudo docker exec -it ybigta-python /bin/bash`

### [etture/ybigta_img_hadoop:1.2](https://github.com/etture/datascience_docker/tree/master/ybigta_img_hadoop/1.2)
- Size: 6.68 GB
- Pull: `sudo docker pull etture/ybigta_img_hadoop:1.2`
- Run: `sudo docker run -d -it -p 8123:8123 --name=ybigta-hadoop etture/ybigta_img_hadoop:1.2 /bin/bash`
- Exec: `sudo docker exec -it ybigta-hadoop /bin/bash`

### [etture/ybigta_img_spark:1.2.4](https://github.com/etture/datascience_docker/tree/master/ybigta_img_spark/1.2.4)
- Size: 7.67 GB
- Pull: `sudo docker pull etture/ybigta_img_spark:1.2.4`
- Run: `sudo docker run -d -it -p 8123:8123 -p 4040:4040 --name=ybigta-spark etture/ybigta_img_spark:1.2.4 /bin/bash`
- Exec: `sudo docker exec -it ybigta-spark /bin/bash`
