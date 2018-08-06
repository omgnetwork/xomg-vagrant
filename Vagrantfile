Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.provider "virtualbox" do |v|https://appear.in/horde-omisego
        v.memory = 4096
        v.cpus = 2
    end
end
