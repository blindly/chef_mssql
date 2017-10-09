#
# Cookbook:: mssql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

yum_repository 'mssql' do
  description "MSSQL 2017"
  baseurl "https://packages.microsoft.com/rhel/7/mssql-server-2017/"
  gpgkey 'https://packages.microsoft.com/keys/microsoft.asc'
  action :create
end

package 'Install MSSQL' do
  package_name 'mssql-server'
end
