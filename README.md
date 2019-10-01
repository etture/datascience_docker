# datascience_docker
Docker settings (Dockerfile etc.) for data science

## Latest images
- `etture/ybigta_img:1.0`: basic image with Anaconda
- `etture/ybigta_img_hadoop:1.1`: image with Hadoop
- `etture/ybigta_img_spark:1.1`: image with Spark

### (etture/ybigta_img_spark:1.1)[./ybigta_img_spark/1.1/]
- Pull: `sudo docker pull etture/ybigta_img_spakr:1.1`
- Run: `sudo docker run -d -it -p 8123:8123 --name=ybigta-spark etture/ybigta_img_spark:1.1 /bin/bash`
- Exec: `sudo docker exec -it ybigta-spark /bin/bash`

### etture/ybigta_img:1.0
- Pull: `sudo docker pull etture/ybigta_img:1.0`
- Run: `sudo docker run -d -ti -p 8123:8123 --name=ybigta etture/ybigta_img:1.0 /bin/bash`
- Exec: `sudo docker exec -ti ybigta /bin/bash`
