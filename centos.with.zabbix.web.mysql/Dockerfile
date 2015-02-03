FROM centos
MAINTAINER Luciano A. Borguetti Faustino <lucianoborguetti@gmail.com>

# Installing packages
RUN yum -q makecache && \
    # Update base images. && \
    yum -y distribution-synchronization && \
    # Installing Zabbix repository. && \
    yum -y install http://repo.zabbix.com/zabbix/2.4/rhel/7/x86_64/zabbix-release-2.4-1.el7.noarch.rpm && \
    # Making all the metadata for yum repos. && \
    yum -q makecache && \
    # Installing Zabbix Server. && \
    yum -y install zabbix-web-mysql && \
    # Cleaning yum. && \
    yum clean all

# Copy start script
COPY run.sh /run.sh
RUN chmod +x run.sh

CMD ["/run.sh"]
