# Class: puppet_exercise:lvm
#
#
class puppet_exercise::lvm {
	physical_volume { '/dev/sdb1':
      ensure => present,
    }

    ->
    volume_group {'exercisevg':
	  ensure           => present,
	  physical_volumes => '/dev/sdb1',
	}

	->
	logical_volume {'exercise.fs':
	  ensure       => present,
	  volume_group => 'exercisevg',
      size         => '8G',
	}

	->
	filesystem {'/dev/exercisevg/exercise.fs':
	   ensure  => present,
	   fs_type => 'xfs'
	}

	->
	physical_volume { '/dev/sdb2':
      ensure => present,
    }

    ->
    volume_group {'exercisevg':
	  ensure           => present,
	  physical_volumes => '/dev/sdb2',
	}
	->
	logical_volume {'exercise.fs':
	  ensure       => present,
	  volume_group => 'exercisevg',
      size         => '2G',
	}
	->
	filesystem {'/dev/exercisevg/exercise.fs':
	   ensure  => present,
	   fs_type => 'xfs'
	} 
}