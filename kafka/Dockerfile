FROM        balhau/centos
MAINTAINER Balhau <balhau@balhau.net>

RUN wget -q -O /opt/kafka_2.10-0.8.2.1.tgz http://mirrors.fe.up.pt/pub/apache/kafka/0.8.2.1/kafka_2.10-0.8.2.1.tgz
RUN tar -xzf /opt/kafka_2.10-0.8.2.1.tgz -C /opt

ADD start-kafka.sh /opt/
RUN chmod +x /opt/start-kafka.sh

ENTRYPOINT /opt/start-kafka.sh
