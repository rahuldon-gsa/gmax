# Prerequisites
An installed version of Grails 2.x (this guide assumes 2.5.0)
Register OMB MAX Account (as described in the Registration Process)

# Create User and Assign Roles
Create user account with roles assigned 
Modify gmax\grails-app\conf\BootStrap.groovy to add this code 
def init = { servletContext -> 
User user = new User("rahul.dongre@gsa.gov", "******").save(flush:true) 
Role role = new Role("ROLE_ADMIN").save(flush:true) 
UserRole userRole = new UserRole(user, role).save(flush:true)
assert UserRole.count==1 }

# Run Application
Navigate to application location : gmax
grails run-app
Application can be run using gradle

# Support
Please contact for any suggestion or support : Rahul Dongre, GSA Contractor
