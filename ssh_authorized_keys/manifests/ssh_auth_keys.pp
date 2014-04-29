define ssh_authorized_keys::ssh_auth_keys(
  $name,
  $key,
  $ensure  = present,
  $type    = 'rsa',
  $user    = user,
){
  ssh_authorized_key{ $name:
      ensure  => $ensure,
      name    => $name,
      type    => $type,
      user    => $user,
      key     => $key,
  }
}
