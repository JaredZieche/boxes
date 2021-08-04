# Vagrant

Install [Vagrant](https://www.vagrantup.com/docs/installation)

## VMWare Setup

Install [VMWare Player](https://my.vmware.com/en/web/vmware/downloads/details?downloadGroup=WKST-PLAYER-1612&productId=1039&rPId=66621). Builds have been tested using the free version of workstation palyer, the version may vary depending on your set up
Install [Vagrant VMWare Utility](https://www.vagrantup.com/docs/providers/vmware/vagrant-vmware-utility)

Install vagrant vmware plugin
```shell
vagrant plugin install vagrant-vmware-desktop
```

or from the root of this repo

```shell
scripts/vmwareplugin.sh
```

## VirtualBox Setup

Install [VirtualBox](https://www.virtualbox.org/wiki/Linux_Downloads)

Download and install [Virtualbox Extension Pack](https://download.virtualbox.org/virtualbox/6.1.26/Oracle_VM_VirtualBox_Extension_Pack-6.1.26.vbox-extpack)

# Packer

Install [Packer](https://learn.hashicorp.com/tutorials/packer/get-started-install-cli)