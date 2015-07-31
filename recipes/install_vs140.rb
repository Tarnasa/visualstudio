::Chef::Recipe.send(:include, VisualStudio::Helper)

include_recipe 'seven_zip'

edition = node['visualstudio']['14.0']['edition']

vs140_is_installed = is_vs_installed?('14.0', edition)

install_url = win_friendly_path(File.join(node['visualstudio']['source'], node['visualstudio']['14.0'][edition]['filename']))
install_log_file = win_friendly_path(File.join(node['visualstudio']['log_dir'], 'vs140install.log'))
iso_extraction_dir = win_friendly_path(File.join(Chef::Config[:file_cache_path], 'visualstudio140'))
setup_exe_path = win_friendly_path(File.join(iso_extraction_dir, node['visualstudio']['14.0'][edition]['installer_file']))

xml_path = win_friendly_path(File.join(Chef::Config[:file_cache_path], 'vs140_admindeployment.xml'))

cookbook_file 'vs140_admindeployment.xml' do
  path xml_path
  only_if { edition == 'enterprise' }
end

powershell_script 'Install Visual Studio 2015' do
    code <<-EOH
    $Drive_Letter = (gwmi -Class Win32_LogicalDisk | Where-Object {$_.VolumeName -eq "#{node['visualstudio']['14.0'][edition]['iso_volume_name']}"}).DeviceID
    if ($Drive_Letter -eq $null)
    {
        echo "We could not find a mount with the specified volume name" > #{install_log_file}
        exit -1;
    }
    cd $Drive_Letter\\
    start-process ./#{node['visualstudio']['14.0'][edition]['installer_file']} '/q /norestart /Log "#{install_log_file}" /AdminFile "#{xml_path}"' -wait
    EOH
    not_if { vs140_is_installed }
end
