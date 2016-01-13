#
# Cookbook Name:: supervisor
# Recipe:: programs
#
# Copyright 2012-2015, Escape Studios
#

programs = node['supervisor']['programs']

unless programs.nil?
  programs.keys.each do |key|
    template "/etc/supervisor/conf.d/#{programs[key]['name']}.conf" do
      source 'program.conf.erb'
      owner 'root'
      group 'root'
      mode 0644
      variables(
        :name => programs[key]['name'],
        :command => programs[key]['command'],
        :stdout_logfile => programs[key]['stdout_logfile'],
        :autostart => programs[key]['autostart'],
        :autorestart => programs[key]['autorestart'],
        :user => programs[key]['user'],
        :startsecs => programs[key]['startsecs'],
        :numprocs => programs[key]['numprocs']
      )
      notifies :restart, 'service[supervisor]'
      action :create
    end
  end
end
