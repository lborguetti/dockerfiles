FROM debian:jessie
MAINTAINER Luciano A. Borguetti Faustino <lucianoborguetti@gmail.com>

# Set envs
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

# Set envs for timezone
ENV TIMEZONE America/Sao_Paulo

RUN apt-get -qqy update \
 && apt-get -qqy upgrade \
 && apt-get -qqy --no-install-recommends install locales \
 && apt-get -qqy --no-install-recommends install zabbix-server-pgsql \
 && locale-gen ${LANG} \
 && echo ${TIMEZONE} > /etc/timezone \
 && dpkg-reconfigure -f noninteractive tzdata \
 && apt-get -qqy autoremove \
 && apt-get -qqy clean \
 && rm -rf /var/lib/apt/*

# Set envs for locale
ENV LANG en_US.UTF-8

# Copy start script
COPY run.sh /run.sh
RUN chmod +x run.sh

ENTRYPOINT ["/run.sh"]
