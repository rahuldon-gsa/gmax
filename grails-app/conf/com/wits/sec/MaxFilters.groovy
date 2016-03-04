package com.wits.sec

class MaxFilters {

	def filters = {
		all(controller:'logout', action:'*') {
			before = {
				String loggeInUserEmail = MaxAuthenticationService.casUser.email
				User user = User.findByUsername(loggeInUserEmail)
				user?.lastLoggedIn = new Date()
				user.save(flush:true)
			}
			after = { Map model ->
			}
			afterView = { Exception e ->
			}
		}
	}
}
