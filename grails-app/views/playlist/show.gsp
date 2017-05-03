
<%@ page import="tube.Playlist" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'playlist.label', default: 'Playlist')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-playlist" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-playlist" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list playlist">
			
				<g:if test="${playlistInstance?.length}">
				<li class="fieldcontain">
					<span id="length-label" class="property-label"><g:message code="playlist.length.label" default="Length" /></span>
					
						<span class="property-value" aria-labelledby="length-label"><g:fieldValue bean="${playlistInstance}" field="length"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playlistInstance?.person}">
				<li class="fieldcontain">
					<span id="person-label" class="property-label"><g:message code="playlist.person.label" default="Person" /></span>
					
						<span class="property-value" aria-labelledby="person-label"><g:link controller="person" action="show" id="${playlistInstance?.person?.id}">${playlistInstance?.person?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${playlistInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="playlist.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${playlistInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playlistInstance?.video}">
				<li class="fieldcontain">
					<span id="video-label" class="property-label"><g:message code="playlist.video.label" default="Video" /></span>
					
						<g:each in="${playlistInstance.video}" var="v">
						<span class="property-value" aria-labelledby="video-label"><g:link controller="video" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:playlistInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${playlistInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
