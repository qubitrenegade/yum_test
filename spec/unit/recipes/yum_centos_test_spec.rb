#
# Cookbook Name:: yum_test
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'yum_test::yum_centos_test' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(
        platform: 'centos',
        version: '7.0'
        )
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'includes yum-centos' do
      expect(chef_run).to include_recipe('yum-centos::default')
    end
  end
end
