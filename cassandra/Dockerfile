FROM        centos
MAINTAINER Balhau <balhau@balhau.net>

RUN         yum update --assumeyes && yum install tar --assumeyes
RUN         yum install unzip openjdk-8-jdk wget curl git docker.io --assumeyes

RUN wget -q -O /opt/apache-cassandra-2.1.4-bin.tar.gz http://mirrors.fe.up.pt/pub/apache/cassandra/2.1.4/apache-cassandra-2.1.4-bin.tar.gz
RUN tar -xzf /opt/apache-cassandra-2.1.4-bin.tar.gz -C /opt


ENTRYPOINT ["/opt/apache-cassandra-2.1.4/bin/cassandra"]
