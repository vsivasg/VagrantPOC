# Vagrant POC
#
# Single box with some custom configuration.
#
# NOTE: Make sure you have the ubuntu/trusty64 base box installed...
# vagrant box add ubuntu/trusty64 https://atlas.hashicorp.com/ubuntu/boxes/trusty64

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "machine1"
  config.vm.network "private_network", ip: "192.168.77.201"
  config.vm.network "forwarded_port", guest: 80, host: 8080
end