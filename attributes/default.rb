default['rabbitmq']['major_version'] = "3"
default['rabbitmq']['minor_version'] = "6"
default['rabbitmq']['incremental'] = "2"
default['rabbitmq']['build'] = "1"


default['rabbitmq']['rpm_package'] = "rabbitmq-server-#{node['rabbitmq']['major_version']}.#{node['rabbitmq']['minor_version']}.#{node['rabbitmq']['incremental']}-#{node['rabbitmq']['build']}.noarch.rpm"
default['rabbitmq']['rpm_package_url'] = "https://www.rabbitmq.com/releases/rabbitmq-server/v#{node['rabbitmq']['major_version']}.#{node['rabbitmq']['minor_version']}.#{node['rabbitmq']['incremental']}/#{node['rabbitmq']['rpm_package']}"
