# -*- mode: ruby -*-
# vi: set ft=ruby :
#
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # config.ssh.pty = true

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provision/playbook.yml"
    ansible.verbose = "vvvv"
  end

  # config.vm.box_check_update = false
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 8000, host: 8000

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  config.ssh.forward_agent = true
  config.vm.synced_folder "~/projects", "/projects"

  config.vm.provider :virtualbox do |vb|
    config.vm.box = "ubuntu/trusty64"
    # vb.gui = true
    vb.memory = 1024
    vb.cpus = 2
  end

  # config.vm.provider :parallels do |vb|
  #   config.vm.box = "puphpet/ubuntu1404-x64"
  #   # vb.gui = true
  #   vb.memory = 1024
  #   vb.cpus = 2
  #   vb.update_guest_tools = true
  # end
end
