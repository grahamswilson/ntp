class ntp::config {

	file { '/etc/ntp.conf':
	  ensure  => 'present',
	  owner   => 'root',
	  group   => 'root',
	  mode    => '0644',
	  source  => 'puppet:///modules/ntp/ntp.conf',
	  require => Package['ntp'],	
}

}
