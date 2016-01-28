pip uninstall -y omxclient
pip install omxclient --upgrade --extra-index-url  http://pip.balhau.net/simple --trusted-host pip.balhau.net #
python /usr/lib/python2.7/site-packages/omxclient/main.py
tail -f /var/log/*log


#cd /var/app/ \
#&& rm -rf omxclient \
#&& wget http://git.balhau.net/omxpiclient.git/zipball/dev -O omxclient.zip \
#&& mkdir omxclient && mv omxclient.zip omxclient \
#&& cd omxclient && unzip omxclient.zip && rm omxclient.zip \
#&& python main.py &

#tail -f /var/log/log
