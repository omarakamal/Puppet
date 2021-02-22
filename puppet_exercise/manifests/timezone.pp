# Class: puppet_exercise::timezone
#
#
class puppet_exercise::timezone {
	file { '/usr/share/zoneinfo/':
		content => 'America/Chicago',
		ensure  => present

	}
}