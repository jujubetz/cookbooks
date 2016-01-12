remote_file '/etc/php.d/browscap.ini' do
  source 'https://s3-sa-east-1.amazonaws.com/oozofiles/browscap.ini'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end