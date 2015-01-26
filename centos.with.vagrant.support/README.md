CentOS image with Vagrant support.
--

## Packages Description

Packages installed required for Vagrant

        sudo
        openssh-server
        openssh-clients

Package installed required for Ansible

        python-simplejson


## Building Image

        git clone https://github.com/lborguetti/docker.lab.git
        cd docker.lab/centos.with.vagrant.support
        docker build -t centos-vagrant .

## Using with Vagrant

        vagrant up --provider=docker
        vagrant ssh
