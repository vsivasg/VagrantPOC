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

