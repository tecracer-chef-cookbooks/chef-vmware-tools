#
# Cookbook:: vmware
# Recipe:: _windows
#
# Copyright:: 2020, tecRacer Opensource, Apache-2.0.

remote_file "#{Chef::Config['file_cache_path']}/VMware-tools.exe" do
  source "#{node['vmware-tools']['url']}/VMware-tools-#{node['vmware-tools']['version']}-x86_64.exe"
  action :create_if_missing
end

if node['vmware-tools']['windows_reboot'] == false
  package 'VMware Tools' do
    source "#{Chef::Config['file_cache_path']}/VMware-tools.exe"
    installer_type :custom
    options '/s /v"/qn REBOOT=R"'
    returns [0, 1618, 1641, 3010]
    version node['vmware-tools']['version'].sub('-', '.')
    action :install
  end

else
  package 'VMware Tools' do
    source "#{Chef::Config['file_cache_path']}/VMware-tools.exe"
    installer_type :custom
    options '/s /v"/qn REBOOT=R"'
    returns [0, 1618, 1641, 3010]
    version node['vmware-tools']['version'].sub('-', '.')
    action :install
    notifies :reboot_now, 'reboot[Restart Computer]', :immediately
  end

  reboot 'Restart Computer' do
    action :nothing
    reason 'Needs to reboot after installing VMware-tools'
    delay_mins 1
  end
end
