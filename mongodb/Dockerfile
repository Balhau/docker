FROM        balhau/centos
MAINTAINER Balhau <balhau@balhau.net>

RUN cd /opt && wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-amazon-3.0.7.tgz && tar -xvf mongodb-linux-x86_64-amazon-3.0.7.tgz && mkdir mongodb
RUN cp -R /opt/mongodb-linux-x86_64-amazon-3.0.7/* /opt/mongodb/ && rm -rf /opt/mongodb-linux-x86_64-amazon-3.0.7/
RUN mkdir /data && mkdir /data/db


ENTRYPOINT /opt/mongodb/bin/mongod
