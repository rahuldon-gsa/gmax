<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
<asset:stylesheet src="application.css" />
<asset:javascript src="application.js" />
<g:layoutHead />
</head>
<body>

	<div id="grailsLogo" role="banner">
		<div class="col-md-2 pull-left">
			<a href="/gmax"><asset:image src="header-max-seal.png" alt="Grails" /></a>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<g:layoutBody />
		</div>
	</div>
	<div class="footer" role="contentinfo">
		<p class="pull-right"></p>
		<div class="row text-center">
			<div class="col-xs-6 col-md-4">
				Made with : <a href="https://grails.org/"><img src="http://grails.github.io/grails-doc/2.3.9/img/grails.png" alt="Mountain View" style="height: 40px;"></a>
			</div>
			<div class="col-xs-6 col-md-4">
				For technical documentation : <g:link controller="manageUser" action="readMe"><span class="glyphicon glyphicon-file" aria-hidden="true"></span> READ ME</g:link> 
			</div>
			<div class="col-xs-6 col-md-4">
				Rahul Dongre : <a href="mailTo:rahuldongre.us@gmail.com" target="_blank"> rahuldongre.us@gmail.com</a>
			</div>
		</div>

	</div>
	<div id="spinner" class="spinner" style="display: none;">
		<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>


</body>
</html>
