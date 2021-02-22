# Class: puppet_exercise::nfs
#
#
class puppet_exercise::nfs {
	file {'/etc/exports':
		content => '/exercise canary(rw,sync)',
		ensure => present,
		replace => true,
	}
	exec {'/usr/bin/exportfs -a':
		onlyif => '/usr/sbin/showmount -e $hostname|/usr/bin/grep /exercise canary',
	}

	service {'nfs-server':
		ensure  => running,
		enable  => true,
		require => Exec['/usr/bin/exportfs -a'],

	}
	service {'firewall-cmd':
		ensure => stopped,
		status => '0',
	}
}