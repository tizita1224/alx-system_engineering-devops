# Update file limits for user holberton to avoid errors during login and file operations.

# Set the hard file limit for the holberton user to 50000.
exec { 'update-hard-file-limit-for-holberton':
  command => 'sed -i "/holberton hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/',
}

# Set the soft file limit for the holberton user to 50000.
exec { 'update-soft-file-limit-for-holberton':
  command => 'sed -i "/holberton soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/',
}
