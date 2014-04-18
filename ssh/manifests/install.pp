class ssh::install {

  case $::osfamily {
    'RedHat': {
      $ssh_packages = ['openssh','openssh-server']
      $ssh_ensure = 'present'
      $ssl_ensure = '1.0.1e-16.el6_5.7'
    }
    'Debian': {
      $ssh_packages = ['openssh-client','openssh-server']
      $ssh_ensure   = 'present'
      $ssl_ensure   = 'latest'
    }
  }

  package { $ssh_packages:
    ensure => $ssh_ensure
  }
  
  package { 'openssl':
    ensure => $ensure
  }

}
