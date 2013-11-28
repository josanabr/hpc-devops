template "/tmp/fstab.tmp" do
        source "fstab.erb"
        mode 0666
        owner "root"
        group "admin"
        variables(
                :headnode => "#{node[:nfs][:master]}",
                :shareddir => "#{node[:nfs][:shareddir]}"
        )
end     
        
execute "modify fstab" do
        user "root"
        command "cat /tmp/fstab.tmp >> /etc/fstab"
        action :run
end

execute "mount" do
        user "root"
        command "mount -a"
        action :run
end
