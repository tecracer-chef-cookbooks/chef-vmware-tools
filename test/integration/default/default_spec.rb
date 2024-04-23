#
# Cookbook:: vmware-tools
# Spec:: default
#
# Copyright:: 2020, tecRacer Opensource, Apache-2.0.
# The following are only examples, check out https://github.com/chef/inspec/tree/master/docs
# for everything you can do.

if os[:family] == 'debian'
  describe package('open-vm-tools') do
    it { should be_installed }
  end

elsif os[:family] == 'redhat'
  describe package('open-vm-tools') do
    it { should be_installed }
  end

elsif os[:family] == 'windows'
  describe file('C:\\Program Files\\VMware\\VMware Tools') do
    its('type') { should eq :directory }
    it { should be_directory }
  end
end
