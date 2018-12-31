<%@ Language="VBScript" %>
<!-- #include file="aspuploader/include_aspuploader.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Simple File Upload - use SaveDirectory property</title>
	<link href="demo.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="demo">
        <h2>Simple File Upload with Custom Validation</h2>
		<p>A basic sample demonstrates the use of the Upload control. The user is allowed to select multiple files and upload them to a specified location (savefiles) directly. It also demonstrates Client side validation of file size/types prior to uploading the files to a server.</p>
		<ul>
			<li>Allowed file types is set to: jpg, gif, png, zip</li>
		</ul>
	<%
	Dim uploader
	Set uploader=new AspUploader
	uploader.MultipleFilesUpload=true
	uploader.MaxSizeKB=10240
	uploader.InsertText="Select multiple files (Max 10M)"
	uploader.SaveDirectory="savefiles"
	uploader.AllowedFileExtensions="*.jpg,*.png,*.gif,*.zip"
	%>
	<%=uploader.GetString() %>
	
	<script type='text/javascript'>
	function CuteWebUI_AjaxUploader_OnTaskComplete(task)
	{
		var div=document.createElement("DIV");
		var link=document.createElement("A");
		link.setAttribute("href","savefiles/"+task.FileName);
		link.setAttribute("target","_blank");
		link.innerHTML="You have uploaded file: savefiles/"+task.FileName;
		div.appendChild(link);
		document.body.appendChild(div);
	}
	</script>
</div>
</body>
</html>

