#
# Cookbook Name:: test_yum
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

%w(yum yum-centos yum-epel).each do |recipe|
  include_recipe recipe
end
