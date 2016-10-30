FROM        balhau/centos

MAINTAINER Balhau <balhau@balhau.net>

RUN mkdir /opt/app && cd /opt/app && wget https://dl.influxdata.com/influxdb/releases/influxdb-1.0.2.x86_64.rpm\
          && yum install --assumeyes influxdb-1.0.2.x86_64.rpm

ADD       start-server.sh /opt/app/
RUN       chmod +x /opt/app/start-server.sh

ENTRYPOINT  /opt/app/start-server.sh
