# datascience_docker
Docker settings (Dockerfile etc.) for data science

## Latest images
- `etture/ybigta_img_python:1.2`: basic Python image with Anaconda
- `etture/ybigta_img_hadoop:1.2`: image with Hadoop
- `etture/ybigta_img_spark:1.2.1`: image with Spark

### [etture/ybigta_img_python:1.2](https://github.com/etture/datascience_docker/tree/master/ybigta_img_python/1.2)
- Pull: `sudo docker pull etture/ybigta_img_python:1.2`
- Run: `sudo docker run -d -ti -p 8123:8123 --name=ybigta-python etture/ybigta_img_python:1.2 /bin/bash`
- Exec: `sudo docker exec -ti ybigta-python /bin/bash`

### [etture/ybigta_img_hadoop:1.2](https://github.com/etture/datascience_docker/tree/master/ybigta_img_hadoop/1.2)
- Pull: `sudo docker pull etture/ybigta_img_hadoop:1.2`
- Run: `sudo docker run -d -it -p 8123:8123 --name=ybigta-hadoop etture/ybigta_img_hadoop:1.2 /bin/bash`
- Exec: `sudo docker exec -it ybigta-hadoop /bin/bash`

### [etture/ybigta_img_spark:1.2.1](https://github.com/etture/datascience_docker/tree/master/ybigta_img_spark/1.2.1)
- Pull: `sudo docker pull etture/ybigta_img_spark:1.2.1`
- Run: `sudo docker run -d -it -p 8123:8123 --name=ybigta-spark etture/ybigta_img_spark:1.2.1 /bin/bash`
- Exec: `sudo docker exec -it ybigta-spark /bin/bash`

## Bash Script to run after initializing Cloud instance <br>(AWS EC2, GCP Compute Engine, etc...)
- `sudo chmod 774 starterpack.sh`
- `./starterpack.sh`
