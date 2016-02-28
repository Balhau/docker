FROM balhau/centos

# Install the latest LTS release of nodejs

RUN mkdir /opt/nodejs && curl https://nodejs.org/dist/v4.2.3/node-v4.2.3-linux-x64.tar.gz | tar xvzf - -C /opt/nodejs --strip-components=1
ENV PATH $PATH:/opt/nodejs/bin


RUN mkdir /var/app

#Install grunt
RUN npm install -g grunt-cli
RUN npm install express-generator -g

ENTRYPOINT /var/app/start-node.sh
