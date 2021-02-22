# Class: puppet_exercise::timezone
#
#
class puppet_exercise::timezone {
	file { '/etc/localtime':
		ensure  => link,
		target  => '/usr/share/zoneinfo/America/Chicago',
	}
}