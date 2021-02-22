# Class: puppet_exercise::directory
#
#
class puppet_exercise::directory {
	$directoryinfo = hiera('puppet_exercise::directory', {})
	create_resources(file, $groupinfo)
}

	}
}