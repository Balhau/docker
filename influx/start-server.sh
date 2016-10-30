/etc/init.d/influxdb start
DBASE_COUNT=$(influx -execute 'SHOW DATABASES' | wc -l)
if [ $DBASE_COUNT -lt 5 ]
then
  echo "CREATING DB "
  influx -execute 'CREATE DATABASE historical'
else
  echo "SKIP Creation"
fi
tail -f /var/log/*log
