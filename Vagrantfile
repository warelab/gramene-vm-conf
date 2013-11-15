# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "saucy64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.provision :shell, :path => "bootstrap.sh"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.define "api" do |api|
    api.vm.box = "api"
    api.vm.provision :shell, :path => "network-api.sh",   :privileged => true
    api.vm.provision :shell, :path => "bootstrap-api.sh", :privileged => false
  end
end
