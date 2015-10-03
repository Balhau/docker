# Docker containers

## Introduction

[Docker](https://www.docker.com/) is a framework to assemble distributed applications.

[Here](https://docs.docker.com/) you can find more info about tech documentation of Docker. The docs are full of examples and the learning curve is really small.

## Images

Before running the docker-compose utility you must manually build the centos base image by running:

    cd centos
    sudo docker build -t balhau/centos .

This image is a centos linux distribution with java 8, git and maven installed, as well as some network utilities like wget and netcat

After the image is created you can automate the build of the remaining images by running (in the parent folder)

    sudo docker-compose build

This command will build the remaining images. After the command is terminated you can start the cluster of machines by doing

    sudo docker-compose up

### Redis image

### Kafka image

### WebPT image

This is an image that runs the webservices that are hosted in the [Git WebPT Repository](http://git.balhau.net/webpt-ws.git/). The image fetch the last snapshot from nexus by running the command

    RUN       cd /var/app/webdata && wget "http://nexus.balhau.net/nexus/service/local/artifact/maven/redirect?r=snapshots&g=org.pt.pub.data&a=webpt-ws&v=LATEST" -O web-pt.jar

So if a new build is uploaded for nexus you just need to destroy the image and run again **docker-compose** that a new version will automatically run on the container
