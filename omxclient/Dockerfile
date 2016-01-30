FROM        balhau/centos

MAINTAINER Balhau <balhau@balhau.net>

#Download the last version of the project

RUN 	rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm \
	&& yum -y update && yum -y install python-pip && pip install --upgrade pip

RUN	yum -y install python-devel

RUN yum -y install libxslt-devel libxml2-devel

RUN	pip install flask

RUN pip install lxml

RUN pip install pika

RUN pip install --upgrade google-api-python-client

RUN curl https://yt-dl.org/downloads/2016.01.29/youtube-dl -o /usr/local/bin/youtube-dl

RUN chmod a+rx /usr/local/bin/youtube-dl


RUN       mkdir /var/app

ADD       start-server.sh /var/app/

RUN       chmod +x /var/app/start-server.sh

ENTRYPOINT  /var/app/start-server.sh
