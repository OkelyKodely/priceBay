<%@ Language="VBScript" %>
<!-- #include file="aspuploader/include_aspuploader.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>
		Form - Single File Upload
	</title>
	<link href="demo.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="demo">
                        
        <h2>Single File Upload</h2>
		<p> A basic sample demonstrating the use of the Upload control (Allowed file types: <span style="color:red">jpg, gif, png, zip</span>).</p>
		
		<%
		    Dim uploader
		    Set uploader=new AspUploader
		    uploader.Name="myuploader"
    		
		    uploader.MaxSizeKB=10240
		    uploader.InsertText="Upload File (Max 10M)"
            uploader.AllowedFileExtensions="*.jpg,*.png,*.gif,*.zip"
		    uploader.MultipleFilesUpload=true
    		
		    'Where'd the files go?
		    uploader.SaveDirectory="/productitems"
    		
		    uploader.render()
		%>
		
		<br/><br/>
			
    <script type='text/javascript'>
	function CuteWebUI_AjaxUploader_OnTaskComplete(task)
	{
		alert(task.FileName + " is uploaded!");
	}
	</script>
						
	</div>
</body>
</html>
