FROM debian:jessie
MAINTAINER Luciano A. Borguetti Faustino <lucianoborguetti@gmail.com>

# Set envs
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

ENV GRAFANA_VERSION 2.1.3
ENV GRAFANA_URL https://grafanarel.s3.amazonaws.com/builds/grafana_${GRAFANA_VERSION}_amd64.deb
ENV GRAFANA_PLUGINS_URL https://github.com/grafana/grafana-plugins/archive/master.zip

RUN apt-get -qqy update \
 && apt-get -qqy upgrade \
 && apt-get -qqy --no-install-recommends install locales \
 && apt-get -qqy --no-install-recommends install unzip \
 && apt-get -qqy --no-install-recommends install curl \
 && apt-get -qqy --no-install-recommends install libfontconfig \
 && apt-get -qqy --no-install-recommends install adduser \
 && apt-get -qqy --no-install-recommends install openssl \
 && apt-get -qqy --no-install-recommends install ca-certificates \
 && curl -L -o /tmp/grafana.deb ${GRAFANA_URL} \
 && curl -L -o /tmp/grafana-plugins.zip ${GRAFANA_PLUGINS_URL} \
 && cd /tmp \
 && dpkg -i /tmp/grafana.deb \
 && unzip -d . grafana-plugins.zip \
 && cp -R grafana-plugins-master/datasources/prometheus /usr/share/grafana/public/app/plugins/datasource/ \
 && rm -rf * \
 && locale-gen en_US.UTF-8 \
 && apt-get -qqy remove curl \
 && apt-get -qqy remove unzip \
 && apt-get -qqy autoremove \
 && apt-get -qqy clean \
 && rm -rf /var/lib/apt/*

# Set envs for locale
ENV LANG en_US.UTF-8

# Copy start script
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# Set volume, workdir, user
VOLUME ["/var/lib/grafana", "/var/log/grafana", "/etc/grafana"]

WORKDIR /usr/share/grafana

USER grafana

EXPOSE 3000

# Set entrypoint
ENTRYPOINT ["/docker-entrypoint.sh"]
