#!/bin/bash
set -e
# Updating and Upgrading dependencies
sudo echo "sslverify=false" >> /etc/yum.conf
sudo yum update -y -qq > /dev/null
sudo yum upgrade -y -qq > /dev/null
# Install necessary libraries for guest additions and Vagrant NFS Share
sudo yum install epel-release -y
sudo yum install dkms kernel-devel kernel-headers gcc make bzip2 perl elfutils-libelf-devel -y
# Install necessary dependencies
sudo yum-config-manager --add-repo
sudo yum -y -q install curl wget git tmux firefox vim -y
# Setup sudo to allow no-password sudo for "admin"
groupadd -r admin
usermod -a -G admin vagrant
cp /etc/sudoers /etc/sudoers.orig
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers
