class splunkforwarder_linux::config (

  $monitor_folders   = hiera('splunkforwarder_linux_monitor_folders'),
  $inputs_file       = hiera('splunkforwarder_linux_inputs_file'),
  $outputs_file      = hiera('splunkforwarder_linux_outputs_file'),
  $splunk_indexers   = hiera('splunkforwarder_linux_indexers'), 
  $splunk_lb_servers = hiera('splunkforwarder_linux_lb_servers'),
){

  exec { 'initialize_splunkforwarder':
    command     => 'splunk enable boot-start --accept-license --answer-yes --no-prompt',
    refreshonly => true,
    path        => '/opt/splunkforwarder/bin',
    subscribe   => Class['splunkforwarder_linux::package'],
  }

  file { $inputs_file: 
    ensure    => present,
    content   => template('splunkforwarder_linux/inputs.conf.erb'),
    subscribe => Class['splunkforwarder_linux::package'],
  }

  file { $outputs_file:
    ensure    => present,
    content   => template('splunkforwarder_linux/outputs.conf.erb'),
    subscribe => Class['splunkforwarder_linux::package'],
  }

}

