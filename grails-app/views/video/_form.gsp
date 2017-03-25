<%@ page import="tube.Video" %>



<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="video.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${tube.User.list()}" optionKey="id" required="" value="${videoInstance?.author?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="video.comment.label" default="Comment" />
		
	</label>
	<g:select name="comment" from="${tube.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${videoInstance?.comment*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="video.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${videoInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'filename', 'error')} required">
	<label for="filename">
		<g:message code="video.filename.label" default="Filename" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="filename" required="" value="${videoInstance?.filename}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'lenght', 'error')} required">
	<label for="lenght">
		<g:message code="video.lenght.label" default="Lenght" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="lenght" type="number" value="${videoInstance.lenght}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="video.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${videoInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'uploadDate', 'error')} required">
	<label for="uploadDate">
		<g:message code="video.uploadDate.label" default="Upload Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="uploadDate" precision="day"  value="${videoInstance?.uploadDate}"  />

</div>

