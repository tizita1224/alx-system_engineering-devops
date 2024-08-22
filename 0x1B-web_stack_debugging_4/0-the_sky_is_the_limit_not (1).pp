# Enhances the traffic capacity of the Nginx server by adjusting file limits.

# Update the default file limit setting
exec { 'update_nginx_ulimit':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => ['/usr/local/bin', '/bin'],
}

# Reload the Nginx service to apply changes
exec { 'reload_nginx':
  command => '/etc/init.d/nginx restart',
  path    => ['/usr/local/bin', '/bin'],
  require => Exec['update_nginx_ulimit'],
}
