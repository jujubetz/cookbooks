remote_file '/etc/php.d/' do
  source 'http://browscap.org/stream?q=Lite_PHP_BrowsCapINI'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end