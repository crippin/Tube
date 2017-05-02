
<%@ page import="tube.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
					<div class="recommended-info">
						<h3>All Videos</h3>
					</div>
					<g:each in="${videoInstanceList}" status="i" var="videoInstance">
					<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
						<div class="resent-grid-img recommended-grid-img">
							<video width="280" height="130">
 							<source id="thumb" src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2" type="video/mp4">
							</video>
						</div>
						<div class="resent-grid-info recommended-grid-info">
							<h3><g:link action="show" id="${videoInstance.id}">${fieldValue(bean: videoInstance, field: "title")}</g:link></h3>
							<ul>
								<li><p class="author author-info"><a class="author">${fieldValue(bean: videoInstance, field: "person.username")}</a></p></li>
								<li class="right-list"><p class="views views-info">${fieldValue(bean: videoInstance, field: "category")}</p></li>
							</ul>
						</div>
					</div>
					</g:each>
					<div class="clearfix"> </div>
				</div>
			<div class="pagination">
				<g:paginate total="${videoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
