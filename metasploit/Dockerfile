FROM        balhau/centos

MAINTAINER Balhau <balhau@balhau.net>

##Install needed dependencies

RUN yum -y install readline-devel
RUN yum -y install openssl-devel
RUN yum -y install postgresql-libs
#RUN yum -y install readline5
RUN yum -y install sqlite-devel
RUN yum -y install libpcap-devel
RUN yum -y install autoconf
RUN yum -y install postgresql
#RUN yum -y install pgadmin3
RUN yum -y install curl
RUN yum -y install zlib-devel
RUN yum -y install libxml2-devel
RUN yum -y install libxslt-devel
#RUN yum -y install vncviewer
RUN yum -y install libyaml-devel
RUN yum -y install which

#Install ruby
RUN curl -sSL https://rvm.io/mpapis.asc | gpg2 --import - &&\
    cd /opt && curl -L get.rvm.io | bash -s stable
RUN source /etc/profile
#RUN echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc
#RUN source ~/.bashrc
RUN rvm install 2.1.6
RUN rvm use 2.1.6 --default

ADD start-mfs.sh /opt/
RUN chmod +x /opt/start-mfs.sh

ENTRYPOINT /opt/start-mfs.sh
