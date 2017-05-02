<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
</head>
<body>

	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="main-grids">
			<div class="top-grids">
				<form enctype="multipart/form-data" id="demoform" method="POST"
					name="demoform">
					<table>
						<tr>
							<td colspan="2"><input accept=".mp4" class="upload" id="file" name="file"
						type="file"></td>
						<tr>
						<td>Title:</td>
							<td><input class="upload" id="title" name="title" type="text"></td>
							</tr>
							<tr>
							<td>Category:</td>
							<td><input class="upload" id="category" name="category" type="text"></td>
							</tr>
							<tr>
							<td>Description:</td>
							<td><input class="upload" id="description" name="description" type="text"></td>
							</tr>
							<tr>
							<td colspan="2"><input class="upload" type="submit" value="Upload"></td>
						</tr>
					</table>
					 	<input class="upload" id="uploader" type="hidden" value="${sec.loggedInUserInfo(field: 'username')}">
					<script type="text/javascript">
						$('#demoform').submit(function(e) {

							e.preventDefault();
							var file = $('#file').val()
							var jForm = new FormData();
							jForm.append("file", $('#file').get(0).files[0]);
							jForm.append("title", $('#title').val());
							jForm.append("category", $('#category').val());
							jForm.append("description", $('#description').val());
							jForm.append("uploader", $('#uploader').val());
							$.ajax({
								url : "uploadFile",
								type : "POST",
								data : jForm,
								mimeType : "multipart/form-data",
								contentType : false,
								cache : false,
								processData : false,
								success : function(data) {
									alert("elérés: /Tube/videoFiles/" + file);
								}
							});
						})
					</script>
				</form>
			</div>
		</div>
	</div>
</body>
</html>