cron "php oozo cron" do
  minute "1"
  command "php /srv/www/oozotv/current/artisan schedule:run >> /dev/null 2>&1"
end