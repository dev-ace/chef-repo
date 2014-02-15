#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

  execute 'apt-get update' do
    command "sudo apt-get update"
  end

package "apache2" do
  action :install
end

service "apache2" do
  action [:enable,:start]
  supports :reload => true
end

cookbook_file "/var/www/index.html" do
  source "index.html"
  mode "0644"
end
