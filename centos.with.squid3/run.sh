#!/bin/bash

echo "=> Starting squid"

/usr/sbin/squid -N ${SQUID_OPTS}
