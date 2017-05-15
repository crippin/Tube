
<%@ page import="tube.Person"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'person.label', default: 'Person')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="show-top-grids">
			<div class="col-sm-8 single-left">
				<div class="song">
					<div class="song-info">
						<h3>
							${personInstance?.realname}'s Profile
						</h3>
					</div>
					<ul class="list-group">
						<li class="list-group-item-info"><h4>
								Username:&nbsp;${personInstance?.username}
							</h4></li>
						<g:if test="${auth}">
							<li class="list-group-item-warning"><h4>
									Password:&nbsp;${personInstance?.password}
								</h4></li>
							<li class="list-group-item-warning"><h4>
									Account Expired:&nbsp;${personInstance?.accountExpired}
								</h4></li>
							<li class="list-group-item-warning"><h4>
									Account Locked:&nbsp;${personInstance?.accountLocked}
								</h4></li>
							<li class="list-group-item-warning"><h4>
									Account Enabled:&nbsp;${personInstance?.enabled}
								</h4></li>
							<li class="list-group-item-warning"><h4>
									Password Expired:&nbsp;${personInstance?.passwordExpired}
								</h4></li>
						</g:if>
						<h4>Comments:</h4>
						<ul class=list-group">
							<g:each in="${personInstance.comment}" var="c">
								<li class="list-group-item"><g:link controller="video"
										action="show" id="${c.video.id}#comment${c.id}">
										${c.video.title?.encodeAsHTML()}
									</g:link></li>
							</g:each>
						</ul>
						<h4>Playlists:</h4>
						<ul class=list-group">
							<g:each in="${personInstance.playlist}" var="p">
								<li class="list-group-item"><g:link controller="playlist"
										action="show" id="${p.id}">
										${p.title?.encodeAsHTML()}
									</g:link></li>
							</g:each>
						</ul>
						<h4>Uploaded Videos:</h4>
						<ul class=list-group">
							<g:each in="${personInstance.video}" var="v">
								<li class="list-group-item"><g:link controller="video"
										action="show" id="${v.id}">
										<video width="280" height="130">
											<source id="thumb"
												src="${resource(dir: 'videoFiles')}/${v?.id}.mp4#t=2"
												type="video/mp4">
										</video>
										<p>${v.title?.encodeAsHTML()}</p>
										
									</g:link></li>
							</g:each>
						</ul>
					</ul>
					</div>
					<div class="single-grid-right">
						<div class="clearfix"></div>
					</div>
					<g:if test="${auth}">
						<g:form url="[resource:personInstance, action:'delete']"
							method="DELETE">
							<fieldset class="buttons">
								<g:link class="edit" action="edit" resource="${personInstance}">
									<g:message code="default.button.edit.label" default="Edit" />
								</g:link>
								<g:actionSubmit class="delete" action="delete"
									value="${message(code: 'default.button.delete.label', default: 'Delete')}"
									onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							</fieldset>
						</g:form>
					</g:if>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="main-grids">
		<div class="top-grids">
</body>
</html>
