import com.wits.sec.Role;
import com.wits.sec.User
import com.wits.sec.UserRole;

class BootStrap {

	def init = { servletContext ->
		User user = new User("rahul.dongre@gsa.gov", "password").save(flush:true)
		Role role = new Role("ROLE_ADMIN").save(flush:true)
		UserRole userRole = new UserRole(user, role).save(flush:true)
		assert UserRole.count==1
	}
	def destroy = {
	}
}
