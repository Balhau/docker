FROM        balhau/centos

MAINTAINER Balhau <balhau@balhau.net>

#Download the last version of the project

RUN       mkdir /var/app && mkdir /var/app/webdata

ADD       start-server.sh /var/app/webdata/

RUN       chmod +x /var/app/webdata/start-server.sh

ENTRYPOINT  /var/app/webdata/start-server.sh
