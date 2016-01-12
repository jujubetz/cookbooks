remote_file '/etc/php.d/browscap.ini' do
  source 'https://www.dropbox.com/s/hzdfgkhwf6t5ub4/browscap.ini?dl=1'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end