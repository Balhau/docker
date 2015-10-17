cd /var/app/webdata && wget "http://nexus.balhau.net/nexus/service/local/artifact/maven/redirect?r=snapshots&g=org.pt.pub.data&a=webpt-ws&v=LATEST" -O web-pt.jar
java -jar /var/app/webdata/web-pt.jar
