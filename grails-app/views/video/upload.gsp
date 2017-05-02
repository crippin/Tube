<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<script type="text/javascript">
var objectUrl;    

$(document).ready(function(){    
	$("#file").change(function(e){ 
		console.log("asd");   
	var file = e.currentTarget.files[0];    
	objectUrl = URL.createObjectURL(file);    
	document.getElementById('audio').setAttribute("src", objectUrl);    
	});})   
</script>
</head>
<body>

	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="main-grids">
			<div class="top-grids">
						<audio id="audio"></audio>
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
					<script type="text/javascript">
					$('#demoform').submit(function(e) {

						e.preventDefault();
						var file = $('#file').val()
						var jForm = new FormData();
						jForm.append("file", $('#file').get(0).files[0]);
						jForm.append("title", $('#title').val());
						jForm.append("description", $('#description').val());
						jForm.append("category", $('#category').val());
						
						
						var duration =0;  //store duration
						
						duration = document.getElementById("audio").duration;
						alert(duration);
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
								alert("asd");
							}
						});
					})</script>
						
					

				</form>
			</div>
		</div>
	</div>
</body>
</html>