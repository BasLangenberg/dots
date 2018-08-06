# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", 512]
  end

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/xenial64"
    ubuntu.vm.hostname = 'ubuntu'
    ubuntu.vm.box_url = "ubuntu/xenial64"

    ubuntu.vm.network :private_network, ip: "192.168.56.101"

    ubuntu.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
    end

    ubuntu.vm.provision :shell, path: "bootstrap_ubuntu.sh"

    ubuntu.vm.provision :ansible do |ansible|
      ansible.extra_vars = {
        user: "vagrant",
      }
      ansible.playbook = "setup.yml"
    end
  end

  config.vm.define "centos" do |centos|
    centos.vm.box = "centos/7"
    centos.vm.hostname = 'centos'
    centos.vm.box_url = "centos/7"

    centos.vm.network :private_network, ip: "192.168.56.102"

    centos.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
    end

    centos.vm.provision :shell, path: "bootstrap_centos.sh"

    centos.vm.provision :ansible do |ansible|
      ansible.extra_vars = {
        user: "vagrant",
      }
      ansible.playbook = "setup.yml"
    end
  end

  # Work in progress
  config.vm.define "arch" do |arch|
    arch.vm.box = "arch"
    arch.vm.hostname = 'arch'

    arch.vm.network :private_network, ip: "192.168.56.102"
    
    arch.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 4096]
      v.gui = true
    end

    arch.vm.provision "shell",
        inline: "pacman --noconfirm --needed -S networkmanager ansible git python2"

    arch.vm.provision :ansible do |ansible|
      ansible.extra_vars = {
        user: "vagrant",
      }
      ansible.playbook = "setup.yml"
    end
  end
end
