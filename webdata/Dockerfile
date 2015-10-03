FROM        balhau/centos

MAINTAINER Balhau <balhau@balhau.net>

#Download the last version of the project

RUN       mkdir /var/app && mkdir /var/app/webdata

ADD       start-server.sh /var/app/webdata/

RUN       chmod +x /var/app/webdata/start-server.sh

RUN       cd /var/app/webdata && wget "http://nexus.balhau.net/nexus/service/local/artifact/maven/redirect?r=snapshots&g=org.pt.pub.data&a=webpt-ws&v=LATEST" -O web-pt.jar

ENTRYPOINT  /var/app/webdata/start-server.sh
