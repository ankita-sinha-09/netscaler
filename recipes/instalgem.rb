#
# Cookbook:: netscalernode
# Recipe:: create_instance
#
# Copyright:: 2018, The Authors, All Rights Reserved.
# New netscaler instance

windows_package 'ruby'

# New netscaler instance

netscalers = search(:node, "role:netscaler AND chef_environment:#{node.chef_environment}")
netscaler_ips = netscalers.map { |n| n['192.168.100.2'] }
ns = Netscaler::Utilities.new(
  :hostname => netscaler_ips,
  :username => 'nsroot',
  :password => 'nsroot'
)

# # Check if a StarLord server exists
# resource_exists = ns.resource_exists?('server','windows-node')
#
# # Check if server StarLord exists
# server_exists = ns.resource_exists?('server','StarLord')


# GET request for server StarLord
# request = ns.build_request('get', 'server', 'windows-node')
# response = request.execute

# # Build the rest request to get StarLord server info
# url = ns.build_url('get', '192.168.100.2', 'server', 'windows-node')

# # # Find the primary netscaler given an array
# primary = ns.find_primary
#
# # Save the configuration file
# ns.save_config
#
# # Logout of the netscaler
# ns.logout
