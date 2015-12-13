rabbitmq-plugins enable rabbitmq_management
/etc/init.d/rabbitmq-server start
tail -f /var/log/**/*log && tail -f /var/log/*log
