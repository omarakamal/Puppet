# Class: exercise5::users
#
#
class exercise5::users {
	group {'Andrews_Group':
		gid   => '1020',
		
	}
	->
	user {'Andrew':
		uid   => '1009',
		groups => 'Andrews_Group',

	}
	->
	user {'Milton':
		groups => 'Andrews_Group',
	}

}