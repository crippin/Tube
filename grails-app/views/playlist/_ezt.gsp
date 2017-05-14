<%@ page import="tube.Playlist" %>


<div class="fieldcontain ${hasErrors(bean: playlistInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="playlist.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${playlistInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playlistInstance, field: 'video', 'error')} ">
	<label for="video">
		<g:message code="playlist.video.title.label" default="Video" />
	</label>
	<g:select name="video" from="${tube.Video.list()}" multiple="multiple" optionKey="id" size="10" value="${playlistInstance?.video*.id}" class="many-to-many"/>

</div>

