<%@ page import="tube.Message" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="comment.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${tube.User.list()}" optionKey="id" required="" value="${commentInstance?.author?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'message', 'error')} required">
	<label for="message">
		<g:message code="comment.message.label" default="Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="message" required="" value="${commentInstance?.message}"/>

</div>

