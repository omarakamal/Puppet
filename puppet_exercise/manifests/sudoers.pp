# Class: puppet_exercise::sudoers:
#
#
class puppet_exercise::sudoers: {
	require puppet_exercise::users
	require puppet_exercise::groups
	$sudoinfo = hiera('puppet_exercise::sudoers', {})
	create_resources(file, $sudoinfo)
}