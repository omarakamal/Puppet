# Class: exercise5::rpm
#
#
class exercise5::rpm {
	file {'placing rpm':
		path   => '/tmp/puppet6-release-el-8.noarch.rpm',
		source => 'puppet:///modules/exercise5/puppet6-release-el-8.noarch.rpm',
		ensure => file,
	}
	package {'/tmp/puppet6-release-el-8.noarch.rpm':
			ensure => installed,
		}
}