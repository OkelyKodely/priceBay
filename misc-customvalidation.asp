<%@ Language="VBScript" %>
<!-- #include file="aspuploader/include_aspuploader.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Misc - Custom Validation</title>
	<link href="demo.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="demo">
       <h2>Custom Validation </h2>
	<p> A sample demonstrating how to create user-defined validation functions for an upload control. In this example, we defined two validation rules:</p>
	<ul>
	    <li>Maximum file size: 200K</li>
	    <li>Allowed file types: jpeg, jpg, gif, png, zip</li>
	</ul>
	<p>Click the following button to upload.</p>
	<br />
		<%
		Dim uploader
		Set uploader=new AspUploader
		uploader.MaxSizeKB=200
		uploader.Name="myuploader"
		uploader.AllowedFileExtensions="jpeg,jpg,gif,png,zip"
		uploader.MultipleFilesUpload=true
		uploader.InsertText="Select multiple files (Max 200K)"
		%>
		
		<%=uploader.GetString() %>
	</div>
</body>
</html>

