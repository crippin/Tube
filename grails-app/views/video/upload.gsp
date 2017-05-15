<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />

<script type="text/javascript">
	var objectUrl;

	$(document).ready(function() {
		$("#file").change(function(e) {
			console.log("asd");
			var file = e.currentTarget.files[0];
			objectUrl = URL.createObjectURL(file);
			document.getElementById('audio').setAttribute("src", objectUrl);
		});
	})
</script>
</head>
<body>

	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="show-top-grids">
			<div class="col-sm-8 single-left">
				<audio id="audio"></audio>
				<div id="box">
					<sec:ifLoggedIn>
						<form enctype="multipart/form-data" id="demoform" method="POST"
							name="demoform">
							<table>
								<tr>
									<td colspan="2"><input accept=".mp4" class="upload"
										id="file" name="file" type="file"></td>
								<tr>
									<td><div class="uploadLabel">Title:</div></td>
									<td><input class="upload" id="title" name="title"
										type="text"></td>
								</tr>
								<tr>
									<td><div class="uploadLabel">Category:</div></td>
									<td><select name="category" class="upload" id="category">
											<option value="Autos & Vehicles">Autos & Vehicles</option>
											<option value="Comedy">Comedy</option>
											<option value="Education">Education</option>
											<option value="Film & Animation">Film & Animation</option>
											<option value="Gaming">Gaming</option>
											<option value="Howto & Style">Howto & Style</option>
											<option value="News & Politics">News & Politics</option>
											<option value="Nonprofits & Activism">Nonprofits &
												Activism</option>
											<option value="People & Blogs">People & Blogs</option>
											<option value="Pets & Animals">Pets & Animals</option>
											<option value="Science & Technology">Science &
												Technology</option>
											<option value="Sports">Sports</option>
											<option value="Travel & Events">Travel & Events</option>
									</select></td>
								</tr>
								<tr>
									<td><div class="uploadLabel">Description:</div></td>
									<td><textarea class="upload" id="description"
											name="description" required></textarea></td>
								</tr>
								<tr>
									<td colspan="2" id="uploadButtonTd"><input class="upload"
										id="uploadButton" type="submit" value="Upload"></td>
								</tr>
							</table>

							<script type="text/javascript">
								$('#demoform').submit(function(e) {
													e.preventDefault();
													var file = $('#file').val()
													var jForm = new FormData();
													jForm.append("file", $('#file').get(0).files[0]);
													jForm.append("title", $('#title').val());
													jForm.append("description",$('#description').val());
													jForm.append("category", $('#category').val());

													var duration = 0; //store duration

													duration = document.getElementById("audio").duration;

													jForm.append("duration", duration);

													$.ajax({
																url : "uploadFile",
																type : "POST",
																data : jForm,
																mimeType : "multipart/form-data",
																contentType : false,
																cache : false,
																processData : false,
																success : function(data) {
																	console.log(data);
																	window.location.href = "/Tube/video/show/"
																			+ data;
																}
															});
												})
												 var snapImage = function() {
												        var canvas = document.createElement('canvas');
												        canvas.width = video.videoWidth;
												        canvas.height = video.videoHeight;
												        canvas.getContext('2d').drawImage(video, 0, 0, canvas.width, canvas.height);
												        var image = canvas.toDataURL();
												        var success = image.length > 100000;
												        if (success) {
												          var img = document.createElement('img');
												          img.src = image;
												          document.getElementsByTagName('div')[0].appendChild(img);
												          URL.revokeObjectURL(url);
												        }
												        return success;
												 };
							</script>
						</form>
					</sec:ifLoggedIn>
					<sec:ifNotLoggedIn>
						<div class="alert alert-danger">
							<strong>You must sign in to upload video!</strong>
						</div>
					</sec:ifNotLoggedIn>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="main-grids">
			<div class="top-grids">
</body>
</html>