<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'video.label', default: 'Video')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>

</head>
<body>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="show-top-grids">
			<div class="col-sm-8 single-left">
				<div class="song">
					<div class="song-info">
						<h3>
							${videoInstance?.title}
						</h3>
					</div>
					<div class="video-grid">
						<video width="500" height="300" controls autoplay>
							<source
								src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4"
								type="video/mp4">
							Your browser does not support the video tag.
						</video>
					</div>
				</div>
				<div class="song-grid-right"></div>
				<div class="clearfix"></div>
				<div class="published">
					<div class="load_more">
						<ul id="myList">
							<li style="display: list-item;">
								<h4>
									Published on
									<g:formatDate date="${videoInstance?.uploadDate}" />
								</h4>
								<h4>
									Category:
									${videoInstance?.category}
								</h4>
								<p>
									${videoInstance?.description}
								</p>
								<h4>
									Uploaded by
									<g:link controller="person"
										action="show" id="${videoInstance?.person.id}">
										${videoInstance?.person.username}
									</g:link></li>
								</h4>
								<p align="right">Views(${videoInstance?.click})</p>
							</li>
						</ul>
					</div>
				</div>
				<div class="all-comments">
					<div class="all-comments-info">
						<a href="#">All Comments (${commentList.size})
						</a>
						<g:form url="[resource:videoInstance, action:'comment']">
							<fieldset class="form">
								<div class="box">
									<form>
										<textarea id="message" name="message"></textarea>
										<input type="submit" value="Send">
										<div class="clearfix"></div>
									</form>
								</div>
							</fieldset>
						</g:form>
					</div>
					<div class="media-grids">
						<g:each in="${commentList}" var="comment">
							<div class="media">
								<h5>
									${comment?.person.username}
								</h5>
								<div class="media-body">
									<p>
										${comment?.message}
									</p>
								</div>
							</div>
						</g:each>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="col-md-4 single-right">
				<h3>Up Next</h3>
				<div class="single-grid-right">
				<g:each in="${sameCategoryList}" status="i" var="video">
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<g:link action="show" id="${video?.id}" class="title">
							<video width="100" height="40">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${video?.id}.mp4#t=2"
							type="video/mp4">
								</video>
						</g:link>
						</div>
						<div class="col-md-8 single-right-grid-right">
						<g:link action="show" id="${video?.id}" class="title">
							${video?.title } 
						</g:link>
							<p class="author">
								<a class="author">${video?.person.username }</a>
							</p>
							<p class="views">${video?.click } views</p>
						</div>
						<div class="clearfix"></div>
					</div>
					</g:each>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="main-grids">
			<div class="top-grids">
</body>
</html>
