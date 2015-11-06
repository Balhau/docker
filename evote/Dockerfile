FROM        balhau/centos

MAINTAINER Balhau <balhau@balhau.net>

#Install pip

RUN 	rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm \
	&& yum -y update && yum -y install python-pip && pip install --upgrade pip

RUN	yum -y install python-devel

RUN	env SWIG_FEATURES="-cpperraswarn -includeall -I/usr/include/openssl" pip install M2Crypto

RUN	pip install evote --extra-index-url http://pip.balhau.net/simple --trusted-host pip.balhau.net

RUN	pip install butils --extra-index-url http://pip.balhau.net/simple --trusted-host pip.balhau.net

ADD     start-evote.sh /opt/

RUN	chmod +x /opt/start-evote.sh

#ENTRYPOINT  "python /usr/lib/python2.7/site-packages/evote/web/service.py"
