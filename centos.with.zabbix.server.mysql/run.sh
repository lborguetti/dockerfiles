#!/bin/bash

# Starting Zabbix Server.
echo "=> Starting Zabbix Server"
/usr/sbin/zabbix_server -c /etc/zabbix/zabbix_server.conf

# Monitoring Zabbix Server (needed because Zabbix not starting in foreground).
while true; do
    pgrep zabbix_server > /dev/null 2>&1
    if [ "${?}x" != "0x" ]; then
        exit 9
    fi
    sleep 30
done
