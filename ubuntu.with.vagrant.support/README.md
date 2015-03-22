Ubuntu image with Vagrant support.
--

## Packages Description

Packages installed required for Vagrant

        sudo
        ssh

Package installed required for Ansible

        python-simplejson


## Building Image

        git clone https://github.com/lborguetti/dockerfiles.git
        cd dockerfiles/ubuntu.with.vagrant.support
        docker build -t ubuntu-vagrant .

## Using with Vagrant

        vagrant up --provider=docker
        vagrant ssh
