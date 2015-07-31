default['visualstudio']['9.0']['edition'] = 'professional'
default['visualstudio']['10.0']['edition'] = 'premium'
default['visualstudio']['11.0']['edition'] = 'premium'
default['visualstudio']['12.0']['edition'] = 'premium'
default['visualstudio']['14.0']['edition'] = 'enterprise'

default['visualstudio']['9.0']['install_dir'] = File.join((ENV['ProgramFiles(x86)'] || 'C:\Program Files (x86)'), 'Microsoft Visual Studio 9.0')
default['visualstudio']['10.0']['install_dir'] = File.join((ENV['ProgramFiles(x86)'] || 'C:\Program Files (x86)'), 'Microsoft Visual Studio 10.0')
default['visualstudio']['11.0']['install_dir'] = File.join((ENV['ProgramFiles(x86)'] || 'C:\Program Files (x86)'), 'Microsoft Visual Studio 11.0')
default['visualstudio']['12.0']['install_dir'] = File.join((ENV['ProgramFiles(x86)'] || 'C:\Program Files (x86)'), 'Microsoft Visual Studio 12.0')
default['visualstudio']['14.0']['install_dir'] = File.join((ENV['ProgramFiles(x86)'] || 'C:\Program Files (x86)'), 'Microsoft Visual Studio 14.0')

# Set this attribute to the folder which contains the ISOs
default['visualstudio']['source'] = 'C:\VS'

default['visualstudio']['log_dir'] = 'C:\logs\visualstudio'

# VS 2008 Professional
default['visualstudio']['9.0']['professional']['installer_file'] = 'Setup\setup.exe'
default['visualstudio']['9.0']['professional']['filename'] = 'en_visual_studio_2008_professional_x86_dvd_x14-26326.iso'
default['visualstudio']['9.0']['professional']['package_name'] = 'Microsoft Visual Studio Professional 2008'
default['visualstudio']['9.0']['professional']['checksum'] = '52ebf5731b75ccc460384ce3fd25bc984fb2d828ae51501ebaf0cadc27a33ee9'

# VS 2008 Service Pack 1
default['visualstudio']['9.0']['sp1']['installer_file'] = 'vs90sp1\SPInstaller.exe'
default['visualstudio']['9.0']['sp1']['filename'] = 'en_visual_studio_2008_service_pack_1_x86_dvd_x15-12962.iso'
default['visualstudio']['9.0']['sp1']['package_name'] = 'Microsoft Visual Studio 2008 Service Pack 1'
default['visualstudio']['9.0']['sp1']['checksum'] = '580f717269faa10cf668140ef0a1a264cec194e20a0083cb0d0004a897cc675e'

# VS 2010 Premium
default['visualstudio']['10.0']['premium']['installer_file'] = 'Setup\setup.exe'
default['visualstudio']['10.0']['premium']['filename'] = 'en_visual_studio_2010_premium_x86_dvd_509357.iso'
default['visualstudio']['10.0']['premium']['package_name'] = 'Microsoft Visual Studio Premium 2010'
default['visualstudio']['10.0']['premium']['checksum'] = '477f6f71b58394e1d3abf61d0ba40adf4052c6eaec9bc6340bb1386fa6119c9a'

# VS 2010 Service Pack 1
default['visualstudio']['10.0']['sp1']['installer_file'] = 'Setup.exe'
default['visualstudio']['10.0']['sp1']['filename'] = 'mu_visual_studio_2010_sp1_x86_dvd_651704.iso'
default['visualstudio']['10.0']['sp1']['package_name'] = 'Microsoft Visual Studio 2010 Service Pack 1'
default['visualstudio']['10.0']['sp1']['checksum'] = 'fce24f0e3f95fdeb54b806be3266f3b61a1e6b5b78c7e6c13c36fc1a6f5ba0ad'

# VS 2012 Premium
default['visualstudio']['11.0']['premium']['installer_file'] = 'vs_premium.exe'
default['visualstudio']['11.0']['premium']['filename'] = 'en_visual_studio_premium_2012_x86_dvd_2262337.iso'
default['visualstudio']['11.0']['premium']['package_name'] = 'Microsoft Visual Studio Premium 2012'
default['visualstudio']['11.0']['premium']['checksum'] = 'dfedf14f94ee8947c269ce7d412ef196b62f0fc6b679dc88ef30aaae5b11ff80'

# VS 2013 Premium Update 4
default['visualstudio']['12.0']['premium']['installer_file'] = 'vs_premium.exe'
default['visualstudio']['12.0']['premium']['filename'] = 'en_visual_studio_premium_2013_with_update_4_x86_dvd_5935086.iso'
default['visualstudio']['12.0']['premium']['package_name'] = 'Microsoft Visual Studio Premium 2013'
default['visualstudio']['12.0']['premium']['checksum'] = '0e08d3eb682545b42b322dff3a5d97ed8d19ade87aa340d6a2064a24f78a2c01'

# VS 2015 Enterprise
default['visualstudio']['14.0']['enterprise']['installer_file'] = 'vs_enterprise.exe'
default['visualstudio']['14.0']['enterprise']['filename'] = 'en_visual_studio_enterprise_2015_x86_x64_dvd_6850497.iso'
default['visualstudio']['14.0']['enterprise']['package_name'] = 'Microsoft Visual Studio Enterprise 2015'
default['visualstudio']['14.0']['enterprise']['checksum'] = '12db74d1e6243924c187069ad95cee58b687dcb9ba2d302fc6ae889fb4ae7694'
default['visualstudio']['14.0']['enterprise']['iso_volume_name'] = 'VS2015_ENT_ENU'
