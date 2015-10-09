#!/bin/bash

# Starting Zabbix Server.
echo "=> Starting Apache"

/usr/sbin/apachectl -f /etc/apache2/apache2.conf -e info -DFOREGROUND
