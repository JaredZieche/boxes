# Boxes
Centralized repo containing packer/vagrant configuration for various linux distributions

## Requirements
- vagrant
- packer
- virtualbox or vmware

## Setup

- [Windows](docs/windwos_setup.md)
- [Linux](docs/linux_setup.md)

## Distribution Directories

Each distribution directory should contain the following:
- `metadata.json`
- `VagrantFile`
- `http` directory for your kickstart file
- `builds` directory for newly created vagrant box files.
- `setup.sh` for any initial configuration steps
- `cleanup.sh`(optional) to clear out any files left over after the build is complete
- An vm image iso file