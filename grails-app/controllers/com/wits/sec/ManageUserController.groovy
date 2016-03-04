package com.wits.sec

import grails.plugin.springsecurity.annotation.Secured

class ManageUserController {

	@Secured('ROLE_ADMIN')
	def index(Integer max) {
		println max
		redirect action:"info", method:"GET"
	}

	@Secured('ROLE_ADMIN')
	def info(){
		['casUser':MaxAuthenticationService.casUser]
	}

	@Secured('permitAll')
	def loginFail(){
		flash.message="Error login into system"
		redirect(uri:'/')
	}

	@Secured('permitAll')
	def readMe(){
	}
}
