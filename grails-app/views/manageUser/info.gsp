
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
	<div class=""><br><br>
		<div class="container-fluid">
			<div class="row">

				<div class="col-lg-8 ">
					<form name="logout" method="POST" action="${createLink(controller:'logout') }">
						<input type="submit" value="logout" class="btn btn-default pull-right">
					</form>

					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">
								${casUser?.first }
								${casUser?.middle}
								${casUser?.last}
							</h3>

						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3 col-lg-3 " align="center">
									<asset:image src="blank-photo.jpg" alt="Grails" class="img-circle img-responsive" />
								</div>
								<div class="col-md-9 col-lg-9 ">
									<table class="table table-user-information">
										<tbody>
											<tr>
												<td>User Type:</td>
												<td>
													${casUser?.type}
												</td>
											</tr>
											<tr>
												<td>Agency Name:</td>
												<td>
													${casUser?.agency}
												</td>
											</tr>
											<tr>
												<td>Authorities:</td>
												<td>
													${casUser?.authorities}
												</td>
											</tr>

											<tr>
											<tr>
												<td>IP Address:</td>
												<td><span id="jsonIpAddress"> </span></td>
											</tr>
											<tr>
												<td>Email</td>
												<td>
													${casUser?.email}
												</td>
											</tr>
											<tr>
												<td>Phone Number</td>
												<td>
													${
													casUser?.phone
												}
												</td>

											</tr>
											<tr>
												<td>Last Login:</td>
												<td>
													${casUser?.lastLoggedIn}
												</td>

											</tr>

										</tbody>
									</table>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$.getJSON("http://jsonip.com/?callback=?", function(data) {
			$("#jsonIpAddress").html(data.ip);
		});
	</script>
</body>
</html>
