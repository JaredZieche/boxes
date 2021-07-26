#!/bin/bash
set -e
# Updating and Upgrading dependencies
sudo dnf update -y -qq > /dev/null
sudo dnf upgrade -y -qq > /dev/null
# Install necessary libraries for guest additions and Vagrant NFS Share
sudo dnf -y -q install kernel-headers build-essential dkms nfs-common
# Install necessary dependencies
sudo dnf -y -q install curl wget git tmux firefox xvfb vim
# Setup sudo to allow no-password sudo for "admin"
groupadd -r admin
usermod -a -G admin vagrant
cp /etc/sudoers /etc/sudoers.orig
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers
