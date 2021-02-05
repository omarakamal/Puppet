# Class: exercise5::hostname
#
#
class exercise5::hostname {
	file {'/etc/hostname':
		content => 'exercise_server',
		ensure  => present,
		replace => true,
	}
}