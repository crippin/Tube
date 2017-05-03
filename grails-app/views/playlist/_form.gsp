<%@ page import="tube.Playlist" %>



<div class="fieldcontain ${hasErrors(bean: playlistInstance, field: 'length', 'error')} required">
	<label for="length">
		<g:message code="playlist.length.label" default="Length" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="length" type="number" value="${playlistInstance.length}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: playlistInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="playlist.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${tube.Person.list()}" optionKey="id" required="" value="${playlistInstance?.person?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playlistInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="playlist.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${playlistInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playlistInstance, field: 'video', 'error')} ">
	<label for="video">
		<g:message code="playlist.video.label" default="Video" />
		
	</label>
	<g:select name="video" from="${tube.Video.list()}" multiple="multiple" optionKey="id" size="5" value="${playlistInstance?.video*.id}" class="many-to-many"/>

</div>

