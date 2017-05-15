
<%@ page import="tube.Playlist"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'playlist.label', default: 'Playlist')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="show-top-grids">
			<div class="col-sm-8 single-left">
				<div class="song">
					<div class="song-info">
						<h3>
							Playlist:
							${playlistInstance?.title}
						</h3>
					</div>
					<ul class="list-group">
						<li class="list-group-item-info"><h4>
								Duration:&nbsp;${playlistInstance?.length}
								sec
							</h4></li>
						<li class="list-group-item-info"><h4>
								Created by:
								<g:link controller="person" action="show"
									id="${playlistInstance?.person.id}">
									${playlistInstance?.person.username}
								</g:link>
							</h4></li>
						<g:if test="${auth}">
							<g:form url="[resource:playlistInstance, action:'delete']"
								method="DELETE">
								<fieldset class="buttons">
									<g:link class="edit" action="edit"
										resource="${playlistInstance}">
										<g:message code="default.button.edit.label" default="Edit" />
									</g:link>
									<g:actionSubmit class="delete" action="delete"
										value="${message(code: 'default.button.delete.label', default: 'Delete')}"
										onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
								</fieldset>
							</g:form>
						</g:if>
					</ul>
					<div class="recommended-info">
						<h3>Videos:</h3>
					</div>
					<div
						class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
						<g:each in="${playlistInstance?.video}" status="i"
							var="videoInstance">
							<div
								class="col-md-4 resent-grid recommended-grid slider-top-grids">
								<div class="resent-grid-img recommended-grid-img">
								<img src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.png" alt="${videoInstance?.title}" height="220" width="420">
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
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="main-grids">
			<div class="top-grids">
</body>
</html>
