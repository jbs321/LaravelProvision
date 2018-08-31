#!/bin/bash -eux

# -e - Abort script at first error, when a command exits with non-zero status (except in until or while loops, if-tests, list constructs)
# -u - Attempt to use undefined variable outputs error message, and forces an exit
# -x - Similar to -v, but expands commands
# -v - Print each command to stdout before executing it

if ! command -v ansible >/dev/null; then
    sudo apt-add-repository ppa:ansible/ansible
    sudo apt-get update -y
    sudo apt-get install ansible -y
fi



echo "Ansible was installed"

cd /vagrant
sudo ansible-playbook development.yml