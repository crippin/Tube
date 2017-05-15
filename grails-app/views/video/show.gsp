<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<link href="http://vjs.zencdn.net/5.19.2/video-js.css" rel="stylesheet">

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
						<video id="my-video" class="video-js" controls preload="auto"
							width="520" height="300" data-setup="{}">
							<source
								src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4"
								type='video/mp4'>
							<p class="vjs-theme-colors-blue">
								To view this video please enable JavaScript, and consider
								upgrading to a web browser that <a
									href="http://videojs.com/html5-video-support/" target="_blank">supports
									HTML5 video</a>
							</p>
						</video>

						<script src="http://vjs.zencdn.net/5.19.2/video.js"></script>
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
									<g:link controller="person" action="show"
										id="${videoInstance?.person.id}">
										${videoInstance?.person.username}
									</g:link>
							</li>
							</h4>
							<p align="right">
								Views(${videoInstance?.click})
							</p>
							</li>
						</ul>
					</div>
				</div>
				<div class="all-comments">
					<div class="all-comments-info">
						<a>All Comments (${commentList.size})
						</a>
						<sec:ifLoggedIn>
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
						</sec:ifLoggedIn>
						<sec:ifNotLoggedIn>
							<div class="alert alert-danger">
								<strong>You must sign in to send comment!</strong>
							</div>
						</sec:ifNotLoggedIn>
					</div>
					<div class="media-grids">
						<g:each in="${commentList}" var="comment">
							<div class="published">
								<h4>
									<g:link controller="person" action="show"
										id="${comment?.person.id}">
										<asset:image src="comment.png" alt="" />
										${comment?.person.username}
									</g:link>

								</h4>
								<div id="comment${comment?.id}" class="media-body">
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
									<img
										src="${resource(dir: 'videoFiles')}/${video?.id}.png"
										alt="${video?.title}" height="80" width="120">
								</g:link>
							</div>
							<div class="col-md-8 single-right-grid-right">
								<g:link action="show" id="${video?.id}" class="title">
									${video?.title }
								</g:link>
								<p class="author">
									<a class="author"> ${video?.person.username }
									</a>
								</p>
								<p class="views">
									${video?.click }
									views
								</p>
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
