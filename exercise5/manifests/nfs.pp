# Class: exercise::nfs
#
#
class exercise5::nfs {
	require exercise5::packages
	file {'/etc/exports':
		content => '/exercise canary(rw,sync)',
		ensure  => present,
		replace => true,
	}

	exec {'/usr/sbin/exportfs':
		creates => '/tmp/exportfs',
	}

	service { 'nfs-server.service':
		enable      => true,
		ensure      => running,
		#hasrestart => true,
		#hasstatus  => true,
		#require    => Class["config"],
	}
}