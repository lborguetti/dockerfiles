#!/bin/sh

/usr/sbin/grafana-server --config=/etc/grafana/grafana.ini \
    cfg:default.paths.data=/var/lib/grafana cfg:default.paths.logs=/var/log/grafana
