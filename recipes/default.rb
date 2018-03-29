#
# Cookbook:: netscalernode
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
# New netscaler instance

# include_recipe 'netscalernode::create_service_group'
include_recipe 'netscalernode::create_instance'
# include_recipe 'netscalernode::create_resource'
include_recipe 'netscalernode::delete_resource'
