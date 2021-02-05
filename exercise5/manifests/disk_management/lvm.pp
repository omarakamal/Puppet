# Class: exercise5::disk_management::lvm
#
#
class exercise5::disk_management::lvm {
	physical_volume { '/dev/sdb1':
		ensure => present,
	}

	->

	volume_group { 'exercisevg':
		ensure    => present,
		physical_volumes => '/dev/sdb1',
	}

	->

	logical_volume {'exercise.fs':
		ensure => present,
		volume_group => 'exercisevg',
		size => '12G',
	}

	->

	filesystem {'/dev/exercisevg/exercise.fs':
		ensure => present,
		fs_type => 'xfs',
	}

}

	


