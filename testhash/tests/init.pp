class { 'testhash':
  hash => {
    item1 => {
      subnet    => '127.0.0.1',
      secret    => 'xyz',
      shortname => 'localhost',
    },
    item2 => {
      subnet    => '10.10.0.0/16',
      secret    => 'abc',
      shortname => 'DC2',
    },
  },


}


