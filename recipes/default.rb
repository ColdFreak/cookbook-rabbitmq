#
# Cookbook Name:: rabbitmq
# Recipe:: default
#
# Copyright (C) 2016 Wang Zhijun
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'erlang::default'

case node['platform_family']
when 'rhel'
  remote_file "#{Chef::Config['file_cache_path']}/#{file_name}" do
    source node['rabbitmq']['rpm_package']
    notifies :run, 'bash[install_rabbitmq]', :immediately
    action :create_if_missing
  end
  bash 'install_rabbitmq' do
    cwd "#{Chef::Config['file_cache_path']}"
    code <<-EOH
      rpm -Uvh #{node['rabbitmq']['rpm_package']}
    EOH
    not_if 'which rabbitmq-server'
  end
end
