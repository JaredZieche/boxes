#!/bin/bash
echo "if this is your first time using vmware vagrant box, download and install the vmware utility for vagrant here: https://www.vagrantup.com/vmware/downloads"
# https://releases.hashicorp.com/vagrant-vmware-utility/1.0.20/vagrant-vmware-utility_1.0.20_x86_64.msi 
echo 
read -p "Is vmware utility installed? (Y/N): " confirm
if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]
then
  # take care of self signed certificates
  echo :ssl_verify_mode: 0 | tee ~/.gemrc
  # install vmware plugin
  vagrant plugin install vagrant-vmware-desktop
else
  echo "re-run script when utility is installed"
fi
