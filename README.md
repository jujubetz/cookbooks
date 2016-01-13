
# OOZOtv Default Stack COOKBOOK

# Mainteiner: juliano@oozo.tv

This repository keep Chef Cookbooks for AWS OpsWorks Custom layer created by 'mainteiner'.

Support for PHP 5.6 and Apache 2.4 and PHP Application deployment.

* Note: This recipes tested on Amazon Linux version: `Amazon Linux 2015.09`

Berkshelf file:

source 'https://supermarket.chef.io'

# apache
cookbook 'apache2', '~> 3.1.0'
# php
cookbook 'php', '~> 1.7.2'
# composer
cookbook 'composer', '~> 2.2.0'
# python
cookbook 'python', '~> 1.4.3'
# supervisor
cookbook 'supervisor', '~> 0.4.12'
# newrelic
cookbook 'newrelic', '~> 2.17.0'
# curl
cookbook 'curl', '~> 2.0.1'
# apt
cookbook 'apt', '~> 2.9.2'
# yum
cookbook 'yum', '~> 3.8.2'

## Initial OOZO Stack Setup

1. Add a new stack
2. Under Advanced Settings:
   - Pick chef version `11.10` as the chef version
   - Use custom cookbook pointing to `https://github.com/jujubetz/cookbooks.git`
   - Enable "Manage Berkshelf" with `3.2.0` as the version 
   - Edit "Custom JSON" (refer to [Stack Custom JSON](#stack-custom-json) section)
3. Add a new `Custom -> Custom` layer.
  * Name: `PHP56 OOZO App Server`
  * Short name: `php56oozoapp`
4. Edit the newly created layer, and add the custom recipes:
  * Setup: `apache2` `php` `apache2::mod_php5` `composer`
    * Note: To use https, add the `apache2::mod_ssl` recipe, and add 443 to `apache.listen_ports` in Stack Custom JSON.
  * Configure: `php::configure`
  * Deploy: `deploy::php-deploy`
  * Undeploy: `deploy::php-undeploy`

## Stack Custom JSON

```javascript
{
  "apache": {
    "package": "httpd24",
    "service_name": "httpd",
    "version": "2.4",
    "lock_dir": "/var/run/httpd",
    "default_site_enabled": false,
    "listen_addresses": ["*"],
    "listen_ports": ["80"]
  },
  "php": {
    "packages": [
      "php56",
      "php56-devel",
      "php56-mcrypt",
      "php56-mbstring",
      "php56-gd",
      "php56-bcmath",
      "php56-tidy",
      "php56-pdo",
      "php56-mysqlnd",
      "php56-pecl-memcached",
      "php56-pecl-apcu",
      "php56-opcache"
    ],
    "directives": {
      "error_log": "/var/log/httpd/php_errors.log"
    }
  },
  "laravel5_deploy": {
    "dotenv": {
      "APP_ENV": "production",
      "APP_DEBUG": false
    }
  }
}
```

## 
