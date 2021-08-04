# Vagrant

Highly recommend installing [choco](https://chocolatey.org/install) if you have the capability. Otherwise download and install [vagrant](https://www.vagrantup.com/downloads) and [Packer](https://learn.hashicorp.com/tutorials/packer/get-started-install-cli)

## VMWare Setup

install vmware and vagrant vmware utility
```powershell
choco install vmware-workstation-player --version=15.5.7.17171714
choco install vagrant-vmware-utility
```

Install vagrant vmware plugin
```shell
vagrant plugin install vagrant-vmware-desktop
```

or from the root of this repo

```shell
scripts/vmwareplugin.sh
```

## VirtualBox Setup

```powershell
choco install virtualbox
```
Download and install virtualbox extension pack:

https://download.virtualbox.org/virtualbox/6.1.26/Oracle_VM_VirtualBox_Extension_Pack-6.1.26.vbox-extpack

# Packer

Install packer
```Powershell
choco install packer
```