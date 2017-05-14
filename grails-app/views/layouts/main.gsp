<%@ page import="tube.Person"%>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}"
	type="image/x-icon">
<title>TUBE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- bootstrap -->
<asset:stylesheet src="bootstrap.min.css" />
<!-- //bootstrap -->
<asset:stylesheet src="dashboard.css" />
<!-- Custom Theme files -->
<asset:stylesheet src="style.css" />
<asset:javascript src="jquery-1.11.1.min.js" />
<!--start-smoth-scrolling-->
<!-- fonts -->
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Poiret+One'
	rel='stylesheet' type='text/css'>
<!--  //fonts -->
<asset:javascript src="application.js" />
<g:layoutHead />
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${createLink(uri: '/')}"><h1>
						<asset:image src="logo.png" alt="" />
					</h1></a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<div class="header-top-right">
					<div class="file">
						<g:link controller="video" action="upload">Upload</g:link>
					</div>
					<sec:ifLoggedIn>
						<div class="file">
							<a id="loggedin"> <g:if test="${request.user}">
									<g:link controller="person" action="show"
										id="${request.user.id}">
										${request.user.username}
									</g:link></a>
							</g:if>
						</div>
						<div class="file">
							<g:remoteLink id="logoutrefresh" controller="logout">
								<g:message code="logout" />
							</g:remoteLink>
							<asset:javascript src="refresh.js" />
					</sec:ifLoggedIn>

					<sec:ifNotLoggedIn>
						<div class="signin">
							<g:link controller="person" action="create">Sign Up</g:link>
						</div>
						<div class="signin">
							<g:link controller="login" class="play-icon">Sign In</g:link>
					</sec:ifNotLoggedIn>



					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</nav>

	<div class="col-sm-3 col-md-2 sidebar">
		<div class="top-navigation">
			<div class="t-menu">MENU</div>
			<div class="t-img">
				<asset:image src="lines.png" alt="" />
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="drop-navigation drop-navigation">
			<ul class="nav nav-sidebar">
				<li><a href="${createLink(uri: '/')}" class="home-icon"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li><a href="${createLink(uri: '/video/toplist')}"> <span
						class="glyphicon glyphicon-film glyphicon-hourglass"
						aria-hidden="true"></span>Toplist
				</a></li>
				<li><a href="${createLink(uri: '/person/halloffame')}"> <span
						class="glyphicon glyphicon-film glyphicon-king"
						aria-hidden="true"></span>Hall of Fame
				</a></li>

				<li><a href="#" class="menu1"><span
						class="glyphicon glyphicon-home glyphicon-blackboard "
						aria-hidden="true"></span>Playlists<span
						class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
				<ul class="cl-effect-2">
					<li><a href="${createLink(uri: '/playlist/create')}">Create
							new Playlist</a></li>
					<li><a href="${createLink(uri: '/playlist/')}">List All</a></li>
				</ul>
				<!-- script-for-menu -->
				<script>
					$("li a.menu1").click(function() {
						$("ul.cl-effect-2").slideToggle(300, function() {
							// Animation complete.
						});
					});
				</script>
				<li><a href="#" class="menu"><span
						class="glyphicon glyphicon-film glyphicon-film" aria-hidden="true"></span>Categories<span
						class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
				<ul class="cl-effect-1">
					<li><a
						href="${createLink(uri: '/video/category/Autos & Vehicles')}">Autos
							& Vehicles</a></li>
					<li><a href="${createLink(uri: '/video/category/Comedy')}">Comedy</a></li>
					<li><a href="${createLink(uri: '/video/category/Education')}">Education</a></li>
					<li><a
						href="${createLink(uri: '/video/category/Film & Animation')}">Film
							& Animation</a></li>
					<li><a href="${createLink(uri: '/video/category/Gaming')}">Gaming</a></li>
					<li><a
						href="${createLink(uri: '/video/category/Howto & Style')}">Howto
							& Style</a></li>
					<li><a
						href="${createLink(uri: '/video/category/News & Politics')}">News
							& Politics</a></li>
					<li><a
						href="${createLink(uri: '/video/category/Nonprofits & Activism')}">Nonprofits
							& Activism</a></li>
					<li><a
						href="${createLink(uri: '/video/category/People & Blogs')}">People
							& Blogs</a></li>
					<li><a
						href="${createLink(uri: '/video/category/Pets & Animals')}">Pets
							& Animals</a></li>
					<li><a
						href="${createLink(uri: '/video/category/Science & Technology')}">Science
							& Technology</a></li>
					<li><a href="${createLink(uri: '/video/category/Sports')}">Sports</a></li>
					<li><a
						href="${createLink(uri: '/video/category/Travel & Events')}">Travel
							& Events</a></li>
				</ul>
				<!-- script-for-menu -->
				<script>
					$("li a.menu").click(function() {
						$("ul.cl-effect-1").slideToggle(300, function() {
							// Animation complete.
						});
					});
				</script>
		</div>
	</div>
	<g:layoutBody />
	<!-- footer -->
	<div class="footer">
		<div class="footer-grids">
			<div class="footer-top"></div>
		</div>
	</div>
	<!-- //footer -->
	</div>
	<div class="clearfix"></div>
	<div class="drop-menu">
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Regular link</a></li>
			<li role="presentation" class="disabled"><a role="menuitem"
				tabindex="-1" href="#">Disabled link</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Another link</a></li>
		</ul>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<asset:javascript src="bootstrap.min.js" />
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</body>
</html>