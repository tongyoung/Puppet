class splunkforwarder_linux {
  class {'::splunkforwarder_linux::package':} ->
  class {'::splunkforwarder_linux::config':} ->
  class {'::splunkforwarder_linux::service':} ->
  Class['splunkforwarder_linux']
}