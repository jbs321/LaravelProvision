Vagrant.configure("2") do |config|
    config.vm.define "laravel" do |laravel|
        config.vm.box = "bento/ubuntu-18.04"
        laravel.vm.network "private_network", ip: "192.168.33.11"
        laravel.vm.hostname = "laravel"
        laravel.ssh.forward_agent = true
        laravel.ssh.port = 2222
        config.vm.synced_folder "./code", "/vagrant"

        config.vm.provider "virtualbox" do |vb|
          vb.memory = "1024"
        end

        laravel.vm.provision "ansible" do |ansible|
          ansible.playbook = "playbook-dev.yml"
        end
    end
end
