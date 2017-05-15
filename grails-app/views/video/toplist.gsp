
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'video.label', default: 'Video')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="recommended-info">
			<h3>Daily top:</h3>
		</div>
		<g:each in="${videoListTopDay}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<img src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.png"
						alt="${videoInstance?.title}" height="220" width="320">
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
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
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>Monthly top:</h3>
		</div>
		<g:each in="${videoListTopMonth}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<img src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.png"
						alt="${videoInstance?.title}" height="220" width="320">
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
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
		<div class="clearfix"></div>
	</div>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="main-grids">
			<div class="top-grids"></div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
</body>
</html>
