<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'person.label', default: 'Person')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="show-top-grids">
			<div class="col-sm-8 single-left">
				<div class="song">
					<div class="song-info">
						<div id="create-person" class="content scaffold-create"
							role="main">
							<h1>
								<g:message code="default.create.label" args="[entityName]" />
							</h1>
							<g:if test="${flash.message}">
								<div class="message" role="status">
									${flash.message}
								</div>
							</g:if>
							<g:hasErrors bean="${personInstance}">
								<ul class="errors" role="alert">
									<g:eachError bean="${personInstance}" var="error">
										<li
											<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
												error="${error}" /></li>
									</g:eachError>
								</ul>
							</g:hasErrors>
							<g:form url="[resource:personInstance, action:'save']">
								<fieldset class="form">
									<g:render template="form" />
								</fieldset>
								<fieldset class="buttons">
									<g:submitButton name="create" class="save"
										value="${message(code: 'default.button.create.label', default: 'Create')}" />
								</fieldset>
							</g:form>
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
