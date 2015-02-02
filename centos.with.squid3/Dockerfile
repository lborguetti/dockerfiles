FROM centos
MAINTAINER Luciano A. Borguetti Faustino <lucianoborguetti@gmail.com>

# Installing packages
RUN yum -y update && \
    yum -y install squid && \
    yum clean all

# Copy start script
COPY run.sh /run.sh
RUN chmod +x run.sh

CMD ["/run.sh"]
