FROM        balhau/centos

MAINTAINER Balhau <balhau@balhau.net>


#Install dependencies

RUN rpm --import http://linuxsoft.cern.ch/cern/centos/7/os/x86_64/RPM-GPG-KEY-cern

RUN wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo

RUN yum install -y python-devel zlib-devel libcurl-devel openssl-devel cyrus-sasl-devel cyrus-sasl-md5 \
    apr-devel subversion-devel apr-util-devel

#Download and build mesos

RUN wget http://www.apache.org/dist/mesos/0.24.0/mesos-0.24.0.tar.gz -O /opt/mesos.tar.gz

RUN cd /opt/ && tar -xvf mesos.tar.gz && rm mesos.tar.gz

RUN cd /opt/mesos-0.24.0 && ./bootstrap && mkdir build && cd build && ../configure && make

RUN cd /opt/mesos-0.24.0/build && make install

ADD start-master.sh /opt/

RUN chmod +x /opt/start-master.sh && mkdir /var/lib/mesos
