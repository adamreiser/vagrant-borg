# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/debian-8.2"
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.synced_folder "./user", "/vagrant/user", :mount_options => ["ro"]
  config.vm.synced_folder "./angband", "/vagrant/angband", :mount_options => ["ro"]
  config.vm.synced_folder "./profile", "/home/vagrant/.angband"
  config.vm.provision "shell", path: "scripts/provision.sh"
  config.vm.provision "shell", path: "scripts/user.sh", privileged: false
end
