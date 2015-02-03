#!/bin/bash

# Starting Zabbix Java Gateway
echo "=> Starting Zabbix Java Gateway"
/usr/sbin/zabbix_java_gateway

# Monitoring Zabbix Java Gateway (needed because Zabbix not starting in foreground)
while true; do
    pgrep -f zabbix-java-gateway > /dev/null 2>&1
    if [ "${?}x" != "0x" ]; then
        exit 9
    fi
    sleep 30
done
