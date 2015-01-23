FROM centos
MAINTAINER Luciano A. Borguetti Faustino <lucianoborguetti@gmail.com>

# Installing packages
RUN yum -y install python-simplejson sudo openssh-server openssh-clients && \
    yum clean all

# Configuring sshd deamon
RUN ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key && \
    ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key && \
    sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && \
    sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config

# Creating vagrant user, setting password and putting ssh-key in authorized_keys
RUN useradd --create-home -s /bin/bash vagrant && \
    mkdir -p /home/vagrant/.ssh && \
    echo 'vagrant:vagrant' | chpasswd && \
    echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key' > /home/vagrant/.ssh/authorized_keys && \
    touch /home/vagrant/.hushlogin && \
    chown -R vagrant: /home/vagrant

# Configuring vagrant in sudoers
RUN echo "vagrant ALL= NOPASSWD: ALL" > /etc/sudoers

CMD ["/usr/sbin/sshd", "-D"]
