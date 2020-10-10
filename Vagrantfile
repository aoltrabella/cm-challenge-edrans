Vagrant.configure("2") do |config|
  config.vm.define "nginx" do |nginx|
    nginx.ssh.private_key_path = "/home/mancheex/.ssh/nginx_rsa"
    nginx.ssh.forward_agent = true
    nginx.vm.box = "aoltrabella/nginx-edrans-challenge"
    nginx.vm.box_version = "1.0"
    nginx.vm.hostname = "loadbalancer"
    nginx.vm.network "private_network", ip: "10.0.0.10"
    nginx.vm.network "public_network", ip: "192.168.0.9"
    nginx.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "nginx"]
    end
  end

  config.vm.define "winnode1" do |winnode1|
    winnode1.vm.box = "aoltrabella/winnode-edrans-challenge"
    winnode1.vm.box_version = "1.0"
    winnode1.vm.communicator = "winrm"
    winnode1.vm.hostname = "node1"
    winnode1.vm.network "private_network", ip: "10.0.0.11"
    winnode1.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "winnode1"]
    end
  end

  config.vm.define "winnode2" do |winnode2|
    winnode2.vm.box = "aoltrabella/winnode-edrans-challenge"
    winnode2.vm.box_version = "1.0"
    winnode2.vm.communicator = "winrm"
    winnode2.vm.hostname = "node2"
    winnode2.vm.network "private_network", ip: "10.0.0.12"
    winnode2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "winnode2"]
    end
  end
end
