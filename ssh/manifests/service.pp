class ssh::service {
  case $::osfamily {
    'RedHat': {
      $service_name = 'sshd'
    }
    'Debian': {
      $service_name = 'ssh'
    }
  }
  service { $service_name:
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class["ssh::config"],
  }
}

