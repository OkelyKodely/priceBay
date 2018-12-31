<%@ Language="VBScript" %>
<!-- #include file="aspuploader/include_aspuploader.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Misc - Customizing the UI</title>
	<link href="demo.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="demo">
        <h2>Customizing the UI</h2>
		<p>A sample demonstrates how to customize the look and feel of file upload controls. </p>		    
			<div style="padding:10px">			
				<img id="uploadbutton" alt="Upload File" src="http://aspuploader.com/images/upload.png" />	
				<div id="uploaderprogresspanel" style='display:none;background-color:orange;border:dashed 2px gray;padding:4px;' BorderColor="Orange" BorderStyle="dashed">
					<span id="uploaderprogresstext" style='color:firebrick'></span>
				</div>
				
				<img id="uploadercancelbutton" style='display:none;' alt="Cancel" src="http://aspuploader.com/images/cancel_button.gif" />

			<%
			Dim uploader
			Set uploader=new AspUploader
			uploader.MaxSizeKB=10240
			uploader.Name="myuploader"
			uploader.MultipleFilesUpload=true
			
			uploader.InsertButtonID="uploadbutton"
			uploader.ProgressCtrlID="uploaderprogresspanel"
			uploader.ProgressTextID="uploaderprogresstext"
			uploader.CancelButtonID="uploadercancelbutton"
			
			%>
			
			<%=uploader.GetString() %>
			
			</div>
	</div>
</body>
</html>

