# Class: exercise1
#
#
class exercise5::packages {
	$packages = lookup(exercise5::packages)
	package { $packages:
		ensure => present,
	}
}
