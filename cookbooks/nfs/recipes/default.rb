#
# Cookbook Name:: nfs
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
directory "#{node[:nfs][:shareddir]}" do
        owner "root"
        group "root"
        mode 0777
        action :create
end
execute "change permissions to mirror" do
        user "root"
        command "chmod 1777 #{node[:nfs][:shareddir]}"
        action :run
end

