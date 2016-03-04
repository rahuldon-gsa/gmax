
<%@ page import="com.wits.sec.User"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
<title>MAX User Info</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container-fluid">

		<div class="page-header">
			<h1>
				OMB MAX Authentication <small>Grails Integration</small>
			</h1>
		</div>
		<div class="col-md-offset-2">
			<dl>
				<dt>
					<h3>Prerequisites</h3>
				</dt>
				<dd>
					<div class="col-md-offset-1">
						<ul>
							<li>An installed version of <a href="http://grails.org/Installation">Grails</a> 2.x (this guide assumes 2.5.0)
							</li>
							<li>Register OMB MAX Account (as described in the <a href="https://max.omb.gov/maxportal/registrationForm.action">Registration Process</a>)
							</li>
						</ul>
					</div>
				</dd>
			</dl>
		</div>

		<div class="col-md-offset-2">
			<dl>
				<dt>
					<h3>Create User and Assign Roles</h3>
				</dt>
				<dd>
					<div class=>
						Create user account with roles assigned <br> <span class=""> Modify gmax\grails-app\conf\BootStrap.groovy to add this code <br> <strong> def init = { servletContext -> <br>User user = new User("rahul.dongre@gsa.gov",
								"******").save(flush:true) <br>Role role = new Role("ROLE_ADMIN").save(flush:true) <br>UserRole userRole = new UserRole(user, role).save(flush:true)<br> assert UserRole.count==1 }
						</strong></span>
					</div>
				</dd>
			</dl>
		</div>

		<div class="col-md-offset-2">
			<dl>
				<dt>
					<h3>Run Application</h3>
				</dt>
				<dd>
					<div class="col-md-offset-1">
						<ul>
							<li>Navigate to application location : gmax</li>
							<li>grails run-app</li>
							<li>Application can be run using gradle</li>
						</ul>
					</div>
				</dd>
			</dl>
		</div>

		<div class="col-md-offset-2">
			<dl>
				<dt>
					<h3>Support</h3>
				</dt>
				<dd>
					Please contact for any suggestion or support : <a href="mailto:rahuldongre.us@gmail.com" target="_blank">Rahul Dongre, GSA Contractor</a>
				</dd>
			</dl>
		</div>

	</div>
</body>
</html>
