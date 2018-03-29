#
# Cookbook:: netscalernode
# Recipe:: create_service_group
#
# Copyright:: 2018, The Authors, All Rights Reserved.
# New netscaler instance
# Create a service group called Guardians
# Create a service group called Guardians
netscaler_servicegroup 'Create Apache' do
  servicegroupname 'apache'
  servicetype 'HTTP'
  hostname '192.168.100.2'
  username 'nsroot'
  password 'nsroot'
  action :create
end

# Bind server StarLord to service group Guardians
netscaler_servicegroup 'Bind windows_node to apache' do
  hostname '192.168.56.3'
  username 'asinha'
  password 'Anku123#'
  servicegroupname 'Guardians'
  servername 'windows_node'
  port 80
  action :bind
end
