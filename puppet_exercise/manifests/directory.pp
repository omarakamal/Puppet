# Class: puppet_exercise::directory
#
#
class puppet_exercise::directory {
	require puppet_exercise::users
	require puppet_exercise::groups
	$directoryinfo = hiera('puppet_exercise::directory', {})
	create_resources(file, $groupinfo)
}

	}
}