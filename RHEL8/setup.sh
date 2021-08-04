#!/bin/bash -eux
# Install Python.
# Add the EPEL repository, and install Ansible.
dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
dnf -y install python3-setuptools python3 python3-pip
alternatives --set python /usr/bin/python3
# Upgrade Pip.
export REQUESTS_CA_BUNDLE='/etc/pki/tls/certs/ca-bundle.crt'
python -m pip install -U pip
# Install Ansible.
python -m pip install ansible