class splunkforwarder_linux::service {

  $service_name = 'splunk'

  service { $service_name :
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    subscribe  => Class['splunkforwarder_linux::config'],
  }

}
