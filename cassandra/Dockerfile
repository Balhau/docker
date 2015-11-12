FROM        balhau/centos
MAINTAINER Balhau <balhau@balhau.net>

RUN yum install jna --assumeyes


RUN wget http://mirrors.fe.up.pt/pub/apache/cassandra/3.0.0/apache-cassandra-3.0.0-bin.tar.gz -O  /opt/cassandra.tar.gz
RUN cd /opt && tar -xzf /opt/cassandra.tar.gz && rm cassandra.tar.gz
RUN rm -rf /opt/apache-cassandra-3.0.0/conf


ENTRYPOINT /opt/apache-cassandra-3.0.0/bin/cassandra -f
