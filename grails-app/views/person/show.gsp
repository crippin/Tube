
<%@ page import="tube.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-person" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list person">
			
				<g:if test="${personInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="person.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${personInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="person.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${personInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="person.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${personInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="person.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${personInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.comment}">
				<li class="fieldcontain">
					<span id="comment-label" class="property-label"><g:message code="person.comment.label" default="Comment" /></span>
					
						<g:each in="${personInstance.comment}" var="c">
						<span class="property-value" aria-labelledby="comment-label"><g:link controller="message" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="person.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${personInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="person.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${personInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.playlist}">
				<li class="fieldcontain">
					<span id="playlist-label" class="property-label"><g:message code="person.playlist.label" default="Playlist" /></span>
					
						<g:each in="${personInstance.playlist}" var="p">
						<span class="property-value" aria-labelledby="playlist-label"><g:link controller="playlist" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.realname}">
				<li class="fieldcontain">
					<span id="realname-label" class="property-label"><g:message code="person.realname.label" default="Realname" /></span>
					
						<span class="property-value" aria-labelledby="realname-label"><g:fieldValue bean="${personInstance}" field="realname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.video}">
				<li class="fieldcontain">
					<span id="video-label" class="property-label"><g:message code="person.video.label" default="Video" /></span>
					
						<g:each in="${personInstance.video}" var="v">
						<span class="property-value" aria-labelledby="video-label"><g:link controller="video" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>