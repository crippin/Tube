
<%@ page import="tube.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-video" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-video" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="video.person.label" default="Author" /></th>
					
						<g:sortableColumn property="description" title="${message(code: 'video.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="filename" title="${message(code: 'video.filename.label', default: 'Filename')}" />
					
						<g:sortableColumn property="lenght" title="${message(code: 'video.lenght.label', default: 'Lenght')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'video.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="category" title="${message(code: 'video.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="uploadDate" title="${message(code: 'video.uploadDate.label', default: 'Upload Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${videoInstanceList}" status="i" var="videoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${videoInstance.id}">${fieldValue(bean: videoInstance, field: "person")}</g:link></td>
					
						<td>${fieldValue(bean: videoInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "filename")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "lenght")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "title")}</td>
					
						<td><g:formatDate date="${videoInstance.uploadDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${videoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
