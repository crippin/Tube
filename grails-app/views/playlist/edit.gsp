<%@ page import="tube.Playlist"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'playlist.label', default: 'Playlist')}" />
<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="show-top-grids">
			<div class="col-sm-8 single-left">
				<div class="song">
					<div id="edit-playlist" class="content scaffold-edit" role="main">
						<h1>
							<g:message code="default.edit.label" args="[entityName]" />
						</h1>
						<g:if test="${flash.message}">
							<div class="message" role="status">
								${flash.message}
							</div>
						</g:if>
						<g:hasErrors bean="${playlistInstance}">
							<ul class="errors" role="alert">
								<g:eachError bean="${playlistInstance}" var="error">
									<li
										<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
											error="${error}" /></li>
								</g:eachError>
							</ul>
						</g:hasErrors>
						<g:form url="[resource:playlistInstance, action:'update']"
							method="PUT">
							<g:hiddenField name="version"
								value="${playlistInstance?.version}" />
							<fieldset class="form">
								<g:render template="ezt" />
							</fieldset>
							<fieldset class="buttons">
								<g:actionSubmit class="save" action="update"
									value="${message(code: 'default.button.update.label', default: 'Update')}" />
							</fieldset>
						</g:form>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="main-grids">
			<div class="top-grids">
</body>
</html>
