#
# Cookbook:: netscalernode
# Recipe:: delete_resource
#
# Copyright:: 2018, The Authors, All Rights Reserved.


# Delete a server called StarLord
netscaler_server 'Delete windows_node' do
  servername 'windows_node'
  hostname '192.168.100.2'
  username 'nsroot'
  password 'nsroot'
  action :delete
end
