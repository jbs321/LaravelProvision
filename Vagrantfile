
ANSIBLE_PATH = '.' # absolute path to Ansible directory on host machine
ANSIBLE_PATH_ON_VM = '/vagrant' # absolute path to Ansible directory on virtual machine

# IP Address for the host only network, change it to anything you like
# but please keep it within the IPv4 private network range
IP_ADDRESS = "192.168.33.11"

# The project name is base for directories, hostname, etc.
HOSTNAME = "israelim.ca"

Vagrant.configure("2") do |config|
    config.vm.define "laravel" do |laravel|
        laravel.vm.box = "bento/ubuntu-18.04"
        laravel.vm.network "private_network", ip: IP_ADDRESS
        laravel.vm.hostname = HOSTNAME
        laravel.ssh.forward_agent = true
        laravel.ssh.port = 2222
        laravel.vm.synced_folder ANSIBLE_PATH , ANSIBLE_PATH_ON_VM, :create => true, owner: 'www-data', group: 'www-data', :mount_options => ["dmode=777", "fmode=666"]

        laravel.vm.provider "virtualbox" do |vb|
          vb.memory = "1024"
        end
    end

    #run vagrant_bootstrap.sh from host machine
    config.vm.provision "shell", path: "vagrant_bootstrap.sh"
end