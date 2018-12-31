<%@ Language="VBScript" %>
<!-- #include file="aspuploader/include_aspuploader.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>
		Form - Multiple files upload
	</title>
	<link href="demo.css" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript">
	function CuteWebUI_AjaxUploader_OnPostback() {
		//submit the form after the file have been uploaded:
		document.forms[0].submit();
	}
	</script>
</head>
<body>
	<div class="demo">                        
        <h2>Selecting multiple files for upload</h2>
		<p>ASP Uploader allows you to select multiple files and upload multiple files at once.</p>
		
			<!-- do not need enctype="multipart/form-data" -->
			<form id="form1" method="POST">
			<%
			Dim uploader
			Set uploader=new AspUploader
			uploader.MaxSizeKB=10240
			uploader.Name="myuploader"
			uploader.InsertText="Upload File (Max 10M)"
			uploader.MultipleFilesUpload=true
			%>
			<%=uploader.GetString() %>
			</form>
			
			<br/><br/>
<%

If Request.Form("myuploader")&""<>"" Then

	Dim list,i
	
	'Gets the GUID List of the files based on uploader name 
	list=Split(Request.Form("myuploader"),"/")

	For i=0 to Ubound(list)
		if i>0 then
			Response.Write("<hr/>")
		end if
		Dim mvcfile
		
		'get the uploaded file based on GUID
		Set mvcfile=uploader.GetUploadedFile(list(i))

		Response.Write("<div style='font-family:Fixedsys'>")
		Response.Write("Uploaded File:")
		 'Gets the name of the file.
		Response.Write("<br/>FileName: ")
		Response.Write(mvcfile.FileName)
		'Gets the size of the file.
		Response.Write("<br/>FileSize: ")
		Response.Write(mvcfile.FileSize)
		'Gets the temp file path. 
		Response.Write("<br/>FilePath: ")
		Response.Write(mvcfile.FilePath)
		Response.Write("</div>")
		'Copys the uploaded file to a new location.    
        mvcfile.CopyTo(Server.MapPath(".")&"/uploads")            
        'Moves the uploaded file to a new location.    
        mvcfile.MoveTo(Server.MapPath(".")&"/uploads")   

	Next
End If

%>
			
	</div>
</body>
</html>
