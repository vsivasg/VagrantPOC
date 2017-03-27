# Vagrant POC

## What is Vagrant?

Vagrant is a tool that uses Oracle's VirtualBox to dynamically build configurable, lightweight, and portable virtual machines. Much more information is available on the [Vagrant web site](http://www.vagrantup.com).

## What is this project?

This is a POC of sample Vagrant to spin up Virtual Box, Configure Vagrant to use Ansible as the provisioner, Install docker, build and run docker container

## How do I install Vagrant?

The host OS used in this POC was Windows 10, but any OS should work as long as VirtualBox can be installed. The Vagrant version used in this POC is v1.9.2. The [Vagrant download page](https://www.vagrantup.com/downloads.html) lists several options for installing Vagrant.

## How do I run the POC?

From the base directory, type the following commands...

```
vagrant up
vagrant ssh
vagrant reload --provision
vagrant destroy
```

These commands will bring up the Vagrant box, SSH into it, and then remove it respectively.

## Summary of Tasks
1. Single box with some custom configuration.
2. Single box with VirtualBox provider.
3. Single box with VirtualBox provider and Ansible provisioning.
4. Single box with VirtualBox provider and Docker provisioning.
5. Single box with VirtualBox provider and Docker provisioning and Docker Image build for Nginx.

## How to Access Index Page from Host OS?

Access the Nginx index page by using below URL

http://192.168.77.201:8080/

## Testing of your infra using testinfra

# To test ansibe/python installation on Host OS
Execute below steps
1) vagrant ssh
2) testinfra -v /vagrant/test/test_myinfra.py

# To test ansibe installation and nginx installation/service on Docker
Execute below steps
1) vagrant ssh
2) docker exec -it -u root nginix /bin/bash
3) testinfra -v testinfra -v /test_nginx.py
