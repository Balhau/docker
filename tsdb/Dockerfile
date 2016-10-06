FROM        balhau/centos

MAINTAINER Balhau <balhau@balhau.net>


# Hadoop and HBase installation
RUN mkdir /var/app && cd /var/app \
    && wget http://mirrors.fe.up.pt/pub/apache/hbase/1.2.3/hbase-1.2.3-bin.tar.gz\


# OpenTSDB instalation
RUN cd /var/app\
  && wget https://github.com/OpenTSDB/opentsdb/releases/download/v2.1.4/opentsdb-2.1.4.noarch.rpm\
  && yum install --assumeyes gnuplot && rpm -ivh opentsdb-2.1.4.noarch.rpm
