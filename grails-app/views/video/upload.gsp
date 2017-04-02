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
							<td><input accept=".mp4" class="upload" id="file" name="file"
						type="file"></td>
							<td><input class="upload" type="submit" value="Upload"></td>
						</tr>
					</table>
					 
					<script type="text/javascript">
						$('#demoform').submit(function(e) {

							e.preventDefault();
							var file = $('#file').val()
							var jForm = new FormData();
							jForm.append("file", $('#file').get(0).files[0]);
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