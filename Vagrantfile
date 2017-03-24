# Vagrant POC
#
# Single box with some custom configuration.
#
# NOTE: Make sure you have the ubuntu/trusty64 base box installed...
# vagrant box add ubuntu/trusty64 https://atlas.hashicorp.com/ubuntu/boxes/trusty64

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  # Configures the box with a name machine1
  config.vm.hostname = "machine1"
  # Configures the box with an IP Address to the host OS
  config.vm.network "private_network", ip: "192.168.77.201"
  # Configures the box with forwarded port 80
  config.vm.network "forwarded_port", guest: 80, host: 8080
  # Configures the memory settings box with 
  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--cpus", "2",
      "--memory", "2048",
    ]
  end
  # Configures Ansible as provisioner
  config.vm.provision :ansible_local do |ansible|
    # Disable default limit to connect to all the machines
    ansible.limit = "all"
	ansible.sudo  = true
	ansible.verbose = "v"
    ansible.playbook = "ansible/simple-update.yml"
  end
  # Provisions docker
  config.vm.provision "docker" do |d|
    d.build_image "/vagrant", args: "-t 'web'"
	d.run "web", args: "-p 8080:80 --name 'nginix' -v '/vagrant/site:/var/www/site' "
  end
end