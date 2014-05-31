class splunkforwarder_linux::package (
  
  $splunkforwarder_linux_package = hiera('splunkforwarder_linux_package'),
  $splunkforwarder_linux_ensure  = hiera('splunkforwarder_linux_version'),
  $splunkforwarder_linux_source  = hiera('splunkforwarder_linux_source'),
  $splunkforwarder_provider = 'rpm',

  ){
  
  package { $splunkforwarder_linux_package:
    ensure   => $splunkforwarder_linux_ensure,
    source   => $splunkforwarder_linux_source,
    provider => $splunkforwarder_provider,
    require  => File[$splunkforwarder_linux_source],
  }

  file {$splunkforwarder_linux_source:
    source => 'puppet:///modules/splunkforwarder_linux/splunkforwarder-6.1.0-206881-linux-2.6-x86_64.rpm'
  }

}
