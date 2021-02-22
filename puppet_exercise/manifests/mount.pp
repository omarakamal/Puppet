# Class: puppet_exercise::mount
#
#
class puppet_exercise::mount {
	require puppet_exercise::directory
	require puppet_exercise::disk_management::lvm
	mount {'dev/exercisevg/exercise.fs':
			name    => '/exercise',
			ensure  => mounted,
			fstype  => 'xfs',
			options => 'defaults',
			pass 	=> '0',
			dump 	=> '0',

	}
	mount {'dev/exercisevg/exercise2.fs':
			name   => '/exercise2',
			ensure => mounted,
			fstype => 'xfs',
			options => 'defaults',
			pass 	=> '0',
			dump 	=> '0',
	}
}