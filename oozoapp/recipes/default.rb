yum_package ['php56', 'openssl-devel', 'cyrus-sasl-devel', 'php56-devel', 'php-pear', 'php56-intl'] do
  action :install
end