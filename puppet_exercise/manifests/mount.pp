# Class: puppet_exercise::mount
#
#
class puppet_exercise::mount {
	require puppet_exercise::directory
	require puppet_exercise::disk_management::lvm
	mount {'/exercise':
			device  => '/dev/exercisevg/exercise.fs',
			ensure  => mounted,
			fstype  => 'xfs',
			options => 'defaults',
			pass 	=> '0',
			dump 	=> '0',

	}
	mount {'/exercise2':
			device   => '/dev/exercisevg/exercise2.fs',
			ensure => mounted,
			fstype => 'xfs',
			options => 'defaults',
			pass 	=> '0',
			dump 	=> '0',
	}
}