Vagrant.configure("2") do |config|
    config.vm.define "laravel" do |laravel|
        laravel.vm.box = "bento/ubuntu-18.04"
        laravel.vm.network "private_network", ip: "192.168.33.11"
        laravel.vm.hostname = "www.israelim.ca"
        laravel.ssh.forward_agent = true
        laravel.ssh.port = 2222
        laravel.vm.synced_folder "." , "/vagrant", :create => true, owner: 'www-data', group: 'www-data', :mount_options => ["dmode=777", "fmode=666"]

        laravel.vm.provider "virtualbox" do |vb|
          vb.memory = "1024"
        end
    end

    #run vagrant_bootstrap.sh from host machine
    config.vm.provision "shell", path: "vagrant_bootstrap.sh"
end