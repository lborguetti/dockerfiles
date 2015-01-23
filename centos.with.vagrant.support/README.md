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
        cd centos.with.vagrant.support
        docker build -t centos-vagrant .

## Using

Create Vagrantfile

        
        VAGRANTFILE_API_VERSION = "2"
        
            Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
              config.vm.provider "docker" do |docker|
                docker.image = "centos-vagrant"
                docker.has_ssh = true
                docker.ports = ["8080:8080"]
              end
        
        end

Up

        
        vagrant up --provider=docker
        vagrant ssh
