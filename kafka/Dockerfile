FROM        centos
MAINTAINER Balhau <balhau@balhau.net>

RUN         yum update --assumeyes && yum install wget tar java --assumeyes
RUN         yum install unzip openjdk-6-jdk wget curl git docker.io --assumeyes

RUN wget -q -O /opt/kafka_2.10-0.8.2.1.tgz http://mirrors.fe.up.pt/pub/apache/kafka/0.8.2.1/kafka_2.10-0.8.2.1.tgz
RUN tar -xzf /opt/kafka_2.10-0.8.2.1.tgz -C /opt
RUN /opt/kafka_2.10-0.8.2.1/bin/zookeeper-server-start.sh /opt/kafka_2.10-0.8.2.1/config/zookeeper.properties &
RUN /opt/kafka_2.10-0.8.2.1/bin/kafka-server-start.sh /opt/kafka_2.10-0.8.2.1/config/server.properties &

#ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD start-kafka.sh /opt/start-kafka.sh
RUN chmod +x /opt/start-kafka.sh


ENTRYPOINT ["./opt/start-kafka.sh"]
