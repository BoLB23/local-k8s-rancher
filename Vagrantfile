Vagrant.configure("2") do |config|

  config.vm.box = "generic/centos8"
  config.vm.hostname = 'vagrant-lab'

  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 443, host: 443

  config.vm.synced_folder ".", "/vagrant"

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
  end

end
