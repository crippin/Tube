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
	<g:passwordField name="password" required="" value="${personInstance?.password}"/>

</div>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'realname', 'error')} required">
	<label for="realname">
		<g:message code="person.realname.label" default="Realname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="realname" required="" value="${personInstance?.realname}"/>

</div>




</div>

