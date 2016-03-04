package com.wits.sec

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.userdetails.GrailsUser
import grails.plugin.springsecurity.userdetails.NoStackUsernameNotFoundException
import grails.transaction.Transactional

import org.jasig.cas.client.validation.Assertion
import org.springframework.security.cas.userdetails.AbstractCasAssertionUserDetailsService
import org.springframework.security.core.authority.SimpleGrantedAuthority
import org.springframework.security.core.userdetails.UserDetails

@Transactional
class MaxAuthenticationService extends AbstractCasAssertionUserDetailsService{

	static final List NO_ROLES = [new SimpleGrantedAuthority(SpringSecurityUtils.NO_ROLE)]

	static UserCommand casUser = new UserCommand()

	private def assignUser(casAttributes, user){

		if(casAttributes){
			casUser.email = casAttributes["Email-Address"]
			casUser.first = casAttributes["First-Name"]
			casUser.middle = casAttributes["Middle-Name"]
			casUser.last = casAttributes["Last-Name"]
			casUser.type = casAttributes["User-Classification"]
			casUser.phone = casAttributes["Phone"]
			casUser.agency = casAttributes["Agency-Name"]
			casUser.lastLoggedIn = user?.lastLoggedIn

			def authList = []
			user?.authorities?.each{ authList << it?.authority }
			casUser.authorities = authList.toListString()
		}
	}

	@Override
	@Transactional
	protected UserDetails loadUserDetails(Assertion assertion) {
		try{
			Map casAttributes = assertion.getPrincipal().getAttributes();
			String emailAddress = casAttributes.get("Email-Address");
			log.info "Finding user from system for email id : " + emailAddress
			User user = User.findByUsername(emailAddress)
			if (!user) throw new NoStackUsernameNotFoundException()

			assignUser(casAttributes, user)

			def authorities = user.authorities.collect {
				new SimpleGrantedAuthority(it.authority)
			}
			return new GrailsUser(user.username, user.password, user.enabled, !user.accountExpired,
					!user.passwordExpired, !user.accountLocked,
					authorities ?: NO_ROLES, user.id)
		}catch(e){
			log.error 'Error authenticating the user, please create user account in system' + e
			throw new NoStackUsernameNotFoundException()
		}
	}
}
