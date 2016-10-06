FROM        balhau/centos

MAINTAINER Balhau <balhau@balhau.net>

#Install chef server

RUN cd /opt && wget https://packages.chef.io/stable/el/5/chef-server-11.1.7-1.el5.x86_64.rpm
RUN cd /opt && yum install -y chef-server-11.1.7-1.el5.x86_64.rpm
#RUN chef-server-ctl install chef-manage
RUN chef-server-ctl reconfigure
#RUN mkdir /opt/chef && chef-server-ctl user-create balhau Balhau Inc balhau@balhau.net '1234' --filename /opt/chef/balhau.pem
#RUN chef-server-ctl org-create short_name 'balhauZone' --association_user balhau --filename /opt/chef/balhauZone-validator.pem

ADD     start-chef.sh /opt/

RUN	chmod +x /opt/start-chef.sh
