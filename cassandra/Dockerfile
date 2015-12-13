FROM        balhau/centos
MAINTAINER Balhau <balhau@balhau.net>

RUN yum install jna --assumeyes


RUN wget http://www.eu.apache.org/dist/cassandra/2.2.3/apache-cassandra-2.2.3-bin.tar.gz -O  /opt/cassandra.tar.gz
RUN cd /opt && tar -xzf /opt/cassandra.tar.gz && rm cassandra.tar.gz
RUN rm -rf /opt/apache-cassandra-2.2.3/conf


ENTRYPOINT /opt/apache-cassandra-2.2.3/bin/cassandra -f
