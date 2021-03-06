execute "update" do
	user "root"
	cwd "/tmp"
	command "apt-get update"
	action :run
end
package "nfs-kernel-server" do
        action :install
end
execute "exports" do
        user "root"
        command "echo \"#{node[:nfs][:shareddir]} *(rw,sync,no_root_squash,no_subtree_check)\" | sudo tee -a /etc/exports"
        action :run
end

# Service resource description -> http://docs.opscode.com/resource_service.html
service "nfs-kernel-server" do
        supports :status => true, :restart => true, :reload => true
        action [ :enable, :restart ]
end
