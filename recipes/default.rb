#
# Cookbook:: node_cookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

include_recipe 'apt'
include_recipe 'nodejs'

apt_update 'update sources' do
  action :update
end

# nodejs_npm 'pm2'

# package 'npm'
package 'nginx'

nodejs_npm 'pm2'

service 'nginx' do
  action :start
end

service 'nginx' do
  action :enable
end

template '/etc/nginx/sites-available/proxy.conf' do
  source 'proxy.conf.erb'
  variables proxy_port: node['nginx']['proxy_port']
  notifies :restart, 'service[nginx]'
end

link '/etc/nginx/sites-enabled/proxy.conf' do
  to '/etc/nginx/sites-available/proxy.conf'
  notifies :restart, 'service[nginx]'
end

link '/etc/nginx/sites-enabled/default' do
  action :delete
  notifies :restart, 'service[nginx]'
end
