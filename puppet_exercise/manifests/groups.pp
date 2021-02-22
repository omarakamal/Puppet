# Class: puppet_exercise::groups
#
#

class puppet_exercise::groups {
	$groupinfo = hiera('puppet_exercise::groups', {})
	create_resources(group, $groupinfo)
}