directory '/srv/www/oozotv/current/storage' do
  owner 'deploy'
  group 'deploy'
  mode '0777'
  action :create
end