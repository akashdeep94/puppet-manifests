class mysql::config(
 $user,
 $group,
)
{ 

file {'/etc/my.cnf':
	ensure => present,
	source => 'puppet:///modules/mysql/my.cnf',
	owner => $user,
	group => $group,
	require => Class['mysql::install'],
	notify => Class['mysql::service'],
	}




}
