<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'message.label', default: 'Message')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="create-message" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${messageInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${messageInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:messageInstance, action:'comment']" >
				<fieldset class="form">
					<div class="box">
								<form>
									<textarea id="message" name="message"></textarea>
									<input type="submit" value="Send">
									<div class="clearfix"> </div>
								</form>
							</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
