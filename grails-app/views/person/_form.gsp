<%@ page import="tube.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="person.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${personInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="person.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${personInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="person.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${personInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="person.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${personInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="person.comment.label" default="Comment" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personInstance?.comment?}" var="c">
    <li><g:link controller="message" action="_show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="message" action="_create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'message.label', default: 'Message')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="person.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${personInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="person.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${personInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'playlist', 'error')} ">
	<label for="playlist">
		<g:message code="person.playlist.label" default="Playlist" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personInstance?.playlist?}" var="p">
    <li><g:link controller="playlist" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="playlist" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'playlist.label', default: 'Playlist')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'realname', 'error')} required">
	<label for="realname">
		<g:message code="person.realname.label" default="Realname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="realname" required="" value="${personInstance?.realname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'video', 'error')} ">
	<label for="video">
		<g:message code="person.video.label" default="Video" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personInstance?.video?}" var="v">
    <li><g:link controller="video" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="video" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'video.label', default: 'Video')])}</g:link>
</li>
</ul>


</div>

