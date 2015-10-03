FROM        centos

MAINTAINER Balhau <balhau@balhau.net>

#Install netcat and wget utility

RUN         yum install nmap-ncat --assumeyes && yum install wget --assumeyes

#Install java
RUN         cd /opt/ \
            && wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz" \
            && tar xzf jdk-8u60-linux-x64.tar.gz \
            && rm -rf  jdk-8u60-linux-x64.tar.gz \
            && cd /opt/jdk1.8.0_60/ \
            && alternatives --install /usr/bin/java java /opt/jdk1.8.0_60/bin/java 2 \
            && alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_60/bin/jar 2 \
            && alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_60/bin/javac 2 \
            && alternatives --set jar /opt/jdk1.8.0_60/bin/jar \
            && alternatives --set javac /opt/jdk1.8.0_60/bin/javac

#Install git

RUN         yum install deltarpm --assumeyes && yum groupinstall "Development Tools" --assumeyes \
            && yum install gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel --assumeyes
RUN         cd /opt/ && wget https://github.com/git/git/archive/v2.6.0.zip -O git.zip

RUN         cd /opt/ && unzip git && rm -rf git.zip && cd git-* && make configure && ./configure --prefix=/usr/local \
            && make install

#Install maven

RUN         cd /opt && wget http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz \
            && tar xzf apache-maven-3.0.5-bin.tar.gz -C /opt && rm apache-maven-3.0.5-bin.tar.gz \
            &&  cd /usr/local && ln -s /opt/apache-maven-3.0.5 maven

ENV         M2_HOME /usr/local/maven
ENV         PATH ${M2_HOME}/bin:${PATH}
