Vagrant.configure("2") do |config|
	config.vm.define :test01 do |node|
		node.vm.box = "precise64"
		node.vm.hostname = "master"
		node.vm.network :private_network, ip: "10.10.10.2", netmask: "255.255.255.0"
		node.vm.provider :virtualbox do |vb|
			vb.customize ["modifyvm", :id, "--memory", 512, "--cpus", 1, "--name", "test-01"]
		end
	end
	config.vm.define :test02 do |node|
		node.vm.box = "precise64"
		node.vm.hostname = "client"
		node.vm.network :private_network, ip: "10.10.10.3", netmask: "255.255.255.0"
		node.vm.provider :virtualbox do |vb|
			vb.customize ["modifyvm", :id, "--memory", 512, "--cpus", 1, "--name", "test-02"]
		end
	end
end
