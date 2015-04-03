FROM        centos
MAINTAINER Balhau <balhau@balhau.net>

RUN         yum update --assumeyes && yum install wget --assumeyes
RUN         yum install unzip openjdk-6-jdk wget curl git docker.io --assumeyes

RUN wget -q -O /opt/kafka-0.8.2.0-src.tgz http://mirror.symnds.com/software/Apache/kafka/0.8.2.0/kafka-0.8.2.0-src.tgz
RUN tar -xzf /opt/kafka-0.8.2.0-src.tgz -C /opt
#ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
#ADD start_kafka.sh /opt/start_kafka.sh
RUN chmod +x /opt/start_kafka.sh

EXPOSE 9092

ENTRYPOINT ["./opt/start_kafka.sh"]
