class testhash (
  $hash
) {

#  $hashdefaults = {
#    secret => 'zzzz',
#  }
 
#  create_resources(testhash::define, $hash, $hashdefaults)

  file { "testhash":
    path    => '/tmp/testhash.txt',
    content => template('testhash/testhash.erb'),
  }
}

