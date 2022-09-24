# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", 512]
  end

  config.vm.define "ubuntu" do |ubuntu|
    config.vm.box = "bento/ubuntu-22.04"
    ubuntu.vm.hostname = 'ubuntu'

    ubuntu.vm.network :private_network, ip: "192.168.56.101"

    ubuntu.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
    end

    ubuntu.vm.provision :shell, path: "bootstrap.sh"

    ubuntu.vm.provision :ansible do |ansible|
      ansible.extra_vars = {
        user: "vagrant",
      }
      ansible.playbook = "setup.yml"
    end
  end

end
