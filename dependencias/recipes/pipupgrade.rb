execute 'pip-install-upgrade' do
  command 'pip install --upgrade pip'
  action :run
end