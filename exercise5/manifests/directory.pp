# Class: exercise5::exercise_directory
#
#
class exercise5::directory {
	require exercise5::users
	require exercise5::disk_management::lvm
	file { '/exercise':
		ensure => directory,
		owner => 'Andrew',
		group => 'Andrews_Group',
		mode  => '0775',
	}
	->
	mount { 'mount /exercise':
		name    => '/exercise',
		ensure  => mounted,
		pass    => '0',
		dump    => '0',
		fstype  => 'xfs',
		options => 'defaults',
		device  => '/dev/exercisevg/exercise.fs',
	}
}