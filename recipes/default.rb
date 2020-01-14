#
# Cookbook:: node_cookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

include_recipe 'apt'
include_recipe 'nodejs'
apt_update

# nodejs_npm 'pm2'

package 'npm'
package 'nginx'

nodejs_npm 'pm2'

service 'nginx' do
  action :start
end

service 'nginx' do
  action :enable
end
