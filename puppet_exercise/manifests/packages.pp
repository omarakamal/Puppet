# Class: puppet_exercise::packages
#
#
class puppet_exercise::packages {
	$packages = lookup(puppet_exercise::packages)
	package { $packages:
		ensure => present,
	}
}
