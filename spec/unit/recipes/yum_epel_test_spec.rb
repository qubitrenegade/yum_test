#
# Cookbook Name:: yum_test
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'yum_test::yum_epel_test' do
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

    it 'includes yum-epel' do
      expect(chef_run).to include_recipe('yum-epel::default')
    end
  end
end
