Ansible provisioning script for Laravel
=
 
Source: https://github.com/jbs321/LaravelProvision

Before Installation:
-
1. create `<Root Directory>\.vault_pass` file
2. paste the password 'Aa123456'

[How to add a host name](https://github.com/cogitatio/vagrant-hostsupdater)
-
`location of hosts file on windows: C:\Windows\System32\drivers\etc\hosts`

1. run `vagrant plugin install vagrant-hostsupdater`
2. You currently only need the hostname and a :private_network network with a fixed IP address.
   
   + config.vm.network :private_network, ip: "192.168.3.10"
   + config.vm.hostname = <domain of site> e.g. "www.israelim.ca"
   + config.hostsupdater.aliases = ["alias.israelim.ca", "alias2.israelim.ca"]
   
3. [read more](https://github.com/cogitatio/vagrant-hostsupdater#multiple-private-network-adapters) for multiple private network adapters

info:
-
This Provisioning script is for Laravel 5+ projects.


Notes (for windows):
-
1. on windows, make sure to run `vagrant up` command in CMD as administrator. 