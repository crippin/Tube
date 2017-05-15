
<%@ page import="tube.Playlist"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'playlist.label', default: 'Playlist')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<g:each in="${playlistInstanceList}" var="playlistInstance">
			<div class="recommended-info">
				<h3>
					<g:link action="show" id="${playlistInstance.id}">
						${playlistInstance.title}:
								</g:link>
				</h3>
				<h5>
					duration:
					${playlistInstance.length}
					sec
				</h5>
				<h5>
					created by:
					<g:link controller="person" action="show" id="${playlistInstance.person.id}">
								${playlistInstance.person.username}
							</g:link>
				</h5>
			</div>
			<g:each in="${playlistInstance?.video}" var="videoInstance">
				<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
					<div class="resent-grid-img recommended-grid-img">
					<img src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.png" alt="${videoInstance?.title}" height="220" width="320">
					</div>
					<div class="resent-grid-info recommended-grid-info">
						<h3>
							<g:link controller="video" action="show" id="${videoInstance.id}">
								${fieldValue(bean: videoInstance, field: "title")}
							</g:link>
						</h3>
						<ul>
							<li><p class="author author-info">
									<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
									</a>
								</p></li>
							<li class="right-list"><p class="views views-info">
									${fieldValue(bean: videoInstance, field: "category")}
								</p></li>
						</ul>
					</div>
				</div>
			</g:each>
		</g:each>
	</div>
	</div>
	</div>
	</div>
	<div class="clearfix"></div>
	</div>
	<div class="main-grids">
		<div class="top-grids">
</html>
