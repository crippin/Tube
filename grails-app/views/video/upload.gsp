<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
</head>
<body>
  <form enctype="multipart/form-data" id="demoform" method="POST" name="demoform">
<input accept=".csv" class="upload" id="file" name="file" type="file">
<input class="upload" type="submit" value="Upload">  
<script type="text/javascript">
$('#demoform').submit(function(e) {
    e.preventDefault();
    var file = $('#file').val()
    var jForm = new FormData();
    jForm.append("file", $('#file').get(0).files[0]);
        $.ajax({
            url: "uploadFile",
            type: "POST",
            data: jForm,
            mimeType: "multipart/form-data",
            contentType: false,
            cache: false,
            processData: false,
            success: function(data) {
            //write code here that you want to doing after successfully file upload.
            }
        });
    }
})</script>
</form>
</body>
</html>