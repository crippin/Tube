
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'video.label', default: 'Video')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="recommended-info">
			<h3>Recent Videos:</h3>
		</div>
		<g:each in="${recent.take(3)}" status="i"
			var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>Comedy:</h3>
		</div>
		<g:each in="${comedyList.take(3)}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>Autos & Vehicles:</h3>
		</div>
		<g:each in="${autoList.take(3)}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>Education:</h3>
		</div>
		<g:each in="${educationList.take(3)}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>Film & Animation:</h3>
		</div>
		<g:each in="${filmList.take(3)}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>Gaming:</h3>
		</div>
		<g:each in="${gameList.take(3)}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>Howto & Style:</h3>
		</div>
		<g:each in="${howToList.take(3)}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>News & Politics:</h3>
		</div>
		<g:each in="${newsList.take(3)}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>Nonprofits & Activism:</h3>
		</div>
		<g:each in="${nonprofitsList.take(3)}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>Pets & Animals:</h3>
		</div>
		<g:each in="${petList.take(3)}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>People & Blogs:</h3>
		</div>
		<g:each in="${blogList.take(3)}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>Science & Technology:</h3>
		</div>
		<g:each in="${scienceList.take(3)}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>Sports:</h3>
		</div>
		<g:each in="${sportsList.take(3)}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
		<div class="recommended-info">
			<h3>Travel & Events:</h3>
		</div>
		<g:each in="${travelList.take(3)}" status="i" var="videoInstance">
			<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
				<div class="resent-grid-img recommended-grid-img">
					<video width="280" height="130">
						<source id="thumb"
							src="${resource(dir: 'videoFiles')}/${videoInstance?.id}.mp4#t=2"
							type="video/mp4">
					</video>
				</div>
				<div class="resent-grid-info recommended-grid-info">
					<h3>
						<g:link action="show" id="${videoInstance.id}">
							${fieldValue(bean: videoInstance, field: "title")}
						</g:link>
					</h3>
					<ul>
						<li><p class="author author-info">
								<a class="author"> ${fieldValue(bean: videoInstance, field: "person.username")}
								</a>
							</p></li>
						<li class="right-list"><p class="views views-info">
								${fieldValue(bean: videoInstance, field: "category")}
							</p></li>
					</ul>
				</div>
			</div>
		</g:each>
		<div class="clearfix"></div>
	</div>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="main-grids">
			<div class="top-grids"></div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
</body>
</html>
