# Class: puppet_exercise::firewall
#
#
class puppet_exercise::firewall {
	service {'firewall':
		ensure => stopped,
		status => 0,
	}
}