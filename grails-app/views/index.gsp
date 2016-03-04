<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>OMB MAX Authentication</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<style type="text/css">
.container-fluid {
	height: 80% !important;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<h1 class="page-header text-center">OMB MAX Authentication Integration</h1>

			<fieldset class="col-lg-8 col-md-offset-3">
				<p>
					<span class="text-primary">Terms and Conditions of Use:</span> This computer system is property of the United States Government. It is intended for authorized government use only. Otherwise, click “Sign In” to accept the terms and conditions, and proceed to OMB MAX.
				</p>
				<ol>
					<li>Register an account with <a href="https://max.omb.gov/maxportal/registrationForm.action" target="_blank">OMB MAX.</a></li>
					<li>Insert your PIV /CAC card (card reader required).</li>
					<li>Select Sign in (You may be prompted to enter a PIN in a pop-up window).</li>
					<li>Enter PIN and select OK to login and enter CMaaSConnect.</li>
				</ol>
			</fieldset>
		</div>
		<div class="row text-center">
			<!-- Change this to a button or input when using this as a form -->
			<g:link action="index" controller="manageUser" class="btn btn-success">Sign In</g:link>
		</div>
	</div>
</body>
</html>
