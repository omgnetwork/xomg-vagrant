Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.provider "virtualbox" do |v|
        v.memory = 4096
        v.cpus = 2
  end
  config.vm.network "forwarded_port", guest: 9656, host: 9656
  config.vm.network "forwarded_port", guest: 8545, host: 8545
  config.vm.network "forwarded_port", guest: 4000, host: 4000
end
