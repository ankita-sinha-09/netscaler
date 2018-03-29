#
# Cookbook:: netscalernode
# Recipe:: create_instance
#
# Copyright:: 2018, The Authors, All Rights Reserved.
# New netscaler instance

# New netscaler instance

netscalers = search(:node, "role:netscaler AND chef_environment:#{node.chef_environment}")
netscaler_ips =  ['192.168.100.2']
ns = Netscaler::Utilities.new(
  :hostname => netscaler_ips,
  :username => 'nsroot',
  :password => 'nsroot'
)

# Check if StarLord server is UP in Guardians service group
# server_up = ns.key_value_exists?(
#   'server_servicegroup_binding',
#   'windows_node',
#   'svrstate',
#   'UP'
# )


# Check if server windows_node exists
server_exists = ns.resource_exists?('server','windows_node')


# # Find the primary netscaler given an array
primary = ns.find_primary

# Save the configuration file
ns.save_config

# Logout of the netscaler
ns.logout
