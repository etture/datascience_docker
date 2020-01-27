FROM etture/ybigta_img_spark:1.2.3
MAINTAINER etture@gmail.com
WORKDIR /root

# Install Scala kernel for Jupyter
# Didn't work with Dockerfile, so had to create image with running container
#RUN /root/anaconda3/bin/pip install spylon-kernel && \
#    /root/anaconda3/bin/python -m spylon_kernel install

COPY ./.bash_aliases .
