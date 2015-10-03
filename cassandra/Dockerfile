FROM        balhau/centos
MAINTAINER Balhau <balhau@balhau.net>


RUN wget http://mirrors.fe.up.pt/pub/apache/cassandra/2.2.1/apache-cassandra-2.2.1-bin.tar.gz -O  /opt/cassandra.tar.gz
RUN cd /opt && tar -xzf /opt/cassandra.tar.gz && rm cassandra.tar.gz


ENTRYPOINT /opt/apache-cassandra-2.2.1/bin/cassandra -f
