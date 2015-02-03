#!/bin/bash

# Starting httpd
echo "=> Starting httpd"

/usr/sbin/apachectl -d . -f /etc/httpd/conf/httpd.conf -e info -DFOREGROUND
