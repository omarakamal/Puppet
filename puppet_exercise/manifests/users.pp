# Class: puppet_exercise::users
#
#
class puppet_exercise::users {
	require puppet_exercise::groups
	$userinfo = hiera('puppet_exercise::users', {})
	create_resources(user, $userinfo)
}