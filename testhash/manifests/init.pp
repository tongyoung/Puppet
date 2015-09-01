class testhash (
  $hash
) {
  $hash1 = {
    item1 => { subnet    => '127.0.0.1/32',
               secret    => 'a',
               shortname => 'localhost' },
    item2 => { subnet    => '10.240.0.0/12',
               secret    => 'b',
               shortname => 'SV5' },
  }

  $hashdefaults = {
    secret => 'zzzz',
  }
 
  create_resources(testhash::define, $hash, $hashdefaults)

  file { "testhash":
    path    => '/tmp/testhash.txt',
    content => template('testhash/testhash.erb'),
  }
}

