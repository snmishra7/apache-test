#
# Cookbook Name:: apache-test
# Recipe:: default
#
# Copyright (C) 2014
#
#
#

package "apache2"

service "apache2" do
  action [ :enable, :start ]
end

template "/var/www/index.html" do
  source 'index.html.erb'
  mode '0755'
end