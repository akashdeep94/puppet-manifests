class mysql::service(
 $enabled,
 $ensure,
)
{
	service{'mysqld':
	ensure => $ensure,
	hasstatus => true,
	hasrestart => true,
	require => Class['mysql::config'],

	}

}



