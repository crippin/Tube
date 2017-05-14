
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" >
<g:set var="entityName"
	value="${message(code: 'video.label', default: 'Video')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="recommended-info">
			<h3>User with the most videos:</h3>
			<h4>${vUser.username}(${vUser.realname}) with ${vNum} videos</h4>
		</div>
		<div class="recommended-info">
			<h3>User with the most comments:</h3>
			<h4>${cUser.username}(${cUser.realname}) with ${cNum} comments</h4>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
</body>
</html>
