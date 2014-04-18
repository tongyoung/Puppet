class ssh::config {

  $permit_root_login = hiera('permit_root_login')
  $ssh_users         = hiera('ssh_users')
  $ssh_issue         = hiera('ssh_issue')

  file {"/etc/ssh/sshd_config":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0600,
    content => template('ssh/sshd_config.erb'),
    require => Class["ssh::install"],
    notify  => Class["ssh::service"],
  }
  
  file {"/etc/issue":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => $ssh_issue
  }
}

