# Class: puppet_exercise
 #
 #
 class puppet_exercise::rpm {
 	file {'placing rpm':
		path   => '/tmp/plexmediaserver-1.19.1.2645-ccb6eb67e.x86_64.rpm',
		source => 'puppet:///modules/puppet_exercise/plexmediaserver-1.19.1.2645-ccb6eb67e.x86_64.rpm',
		ensure => file,
	}
	->
	package {'/tmp/plexmediaserver-1.19.1.2645-ccb6eb67e.x86_64.rpm':
			ensure => installed,
	}
	
}