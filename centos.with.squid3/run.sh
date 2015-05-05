#!/bin/bash

echo "=> Create missing swap directories"
/usr/sbin/squid -z

echo "=> Starting squid"
/usr/sbin/squid -N ${SQUID_OPTS}
