# Class: puppet_exercise::nfs
#
#
class puppet_exercise::nfs {
	file {'/etc/exports':
		content => '/exercise canary(rw,sync)',
		ensure => present,
		replace => true,
}
	exec {'/usr/bin/exportfs':
		onlyif => '/etc/exports|grep $hostname',
}

	service {'systemctl start nfs':
		ensure  => running,
		enable  => true,
		require => Exec ['/usr/bin/exportfs']

}
}