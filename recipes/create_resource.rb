#
# Cookbook:: netscalernode
# Recipe:: create_resource
#
# Copyright:: 2018, The Authors, All Rights Reserved.


# New netscaler instance
#netscaler_ips =  ['192.168.100.2']
#ns = Netscaler::Utilities.new(
#  :hostname => netscaler_ips,
#  :username => 'nsroot',
#  :password => 'nsroot'
#)


netscaler_server "Create windows_node" do
  hostname '192.168.100.2'
  username 'nsroot'
  password 'nsroot'
  servername 'windows_node'
  ipaddress '192.168.100.5'
  # domainresolveretry 6
  # domain 'win.com'
  action :create
end
