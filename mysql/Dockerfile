FROM        balhau/centos

MAINTAINER Balhau <balhau@balhau.net>

RUN         yum update --assumeyes && yum install wget --assumeyes
RUN         wget -r --no-parent -A 'epel-release-*.rpm' http://dl.fedoraproject.org/pub/epel/7/x86_64/e/
RUN         rpm -Uvh dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-*.rpm
RUN         yum install redis --assumeyes

EXPOSE      6379
ENTRYPOINT  ["/usr/bin/redis-server"]
