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

if ! command dos2unix --version >/dev/null; then
    sudo apt-get install dos2unix
fi

echo "dos2unix installed"

#in case of error:  $'\r': command not found uncomment this and re-provision
#sudo dos2unix /vagrant/vagrant_bootstrap.sh
#echo "file is unix based"

cd /vagrant
sudo ansible-playbook development.yml