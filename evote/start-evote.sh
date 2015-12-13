#!/bin/sh
pip uninstall -y evote
pip uninstall -y butils
pip install evote --extra-index-url http://pip.balhau.net/simple --trusted-host pip.balhau.net
pip install butils --extra-index-url http://pip.balhau.net/simple --trusted-host pip.balhau.net
python /usr/lib/python2.7/site-packages/evote/web/service.py
