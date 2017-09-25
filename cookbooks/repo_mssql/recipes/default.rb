#
# Cookbook:: repo_mssql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apt_repository 'repo_mssql' do
  uri        'https://packages.microsoft.com/ubuntu/16.04/mssql-server'
  distribution 'xenial'
  components ['main']
  key	     'https://packages.microsoft.com/keys/microsoft.asc'
end

apt_update 'update'

apt_package 'mssql-server'
