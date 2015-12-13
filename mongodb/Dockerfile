FROM        debian:wheezy
MAINTAINER Balhau <balhau@balhau.net>

#Install for debian

RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv EA312927
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.2 main" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list
RUN apt-get update && apt-get install -y mongodb-org
RUN apt-get install -y apache2 wget unzip php5 vim
RUN cd /var/www && wget --no-check-certificate http://rockmongo.com/downloads/go?id=14 -O rockmongo.zip && unzip rockmongo.zip && rm rockmongo.zip
RUN mkdir /data && mkdir /data/db

RUN cd /var/www/ && rm -rf * && wget http://rockmongo.com/downloads/go?id=14 --no-check-certificate -O rockmongo.zip
RUN cd /var/www/ && ls && unzip rockmongo*
RUN cd /var/www/ && rm -rf rockmongo.zip && mv rockmongo* rockmongo

ADD phpinfo.php /var/www

RUN apt-get install -y php-pear php5-dev make
RUN pecl install mongo
RUN echo "extension=mongo.so" | tee /etc/php5/apache2/conf.d/mongo.ini
RUN echo "extension=mongo.so" >> /etc/php5/apache2/php.ini


ADD mongod.conf /etc/
ADD rockmongo.php.config /var/www/rockmongo/config.php


#Install mongodb for CENTOS
#RUN cd /opt && wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-amazon-3.0.7.tgz && tar -xvf mongodb-linux-x86_64-amazon-3.0.7.tgz && mkdir mongodb
#RUN cp -R /opt/mongodb-linux-x86_64-amazon-3.0.7/* /opt/mongodb/ && rm -rf /opt/mongodb-linux-x86_64-amazon-3.0.7/
#RUN mkdir /data && mkdir /data/db


ENTRYPOINT /etc/init.d/apache2 restart && /usr/bin/mongod
