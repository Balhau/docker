FROM        balhau/centos

MAINTAINER Balhau <balhau@balhau.net>

RUN yum update --assumeyes && yum install wget --assumeyes
RUN cd /opt && wget https://www.rabbitmq.com/releases/erlang/erlang-18.1-1.el6.x86_64.rpm
RUN cd /opt && yum install -y erlang-18.1-1.el6.x86_64.rpm
RUN mkdir /opt/rabbitmq && wget https://github.com/rabbitmq/rabbitmq-server/releases/download/rabbitmq_v3_5_6/rabbitmq-server-3.5.6-1.noarch.rpm
RUN rpm --import https://www.rabbitmq.com/rabbitmq-signing-key-public.asc && yum install -y rabbitmq-server-3.5.6-1.noarch.rpm
RUN mkdir /run/lock && mkdir /run/lock/subsys
RUN echo '[{rabbit, [{loopback_users, []}]}].' > /etc/rabbitmq/rabbitmq.config

ADD start-rabbitmq.sh /opt/
RUN chmod +x /opt/start-rabbitmq.sh

ENTRYPOINT /opt/start-rabbitmq.sh
