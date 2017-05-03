<%@ page import="tube.Message" %>



<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'message', 'error')} required">
	<label for="message">
		<g:message code="message.message.label" default="Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="message" required="" value="${messageInstance?.message}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="message.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${tube.Person.list()}" optionKey="id" required="" value="${messageInstance?.person?.id}" class="many-to-one"/>

</div>

