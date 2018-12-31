<%@ Language="VBScript" %>
<!-- #include file="aspuploader/include_aspuploader.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>
		Ajax - Multiple files upload
	</title>
	<link href="demo.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
		var handlerurl='ajax-multiplefiles-handler.asp'
	</script>
	<script type="text/javascript">
	function CuteWebUI_AjaxUploader_OnPostback()
	{
		var uploader = document.getElementById("myuploader");
		var guidlist = uploader.value;

		//Send Request
		var xh;
		if (window.XMLHttpRequest)
			xh = new window.XMLHttpRequest();
		else
			xh = new ActiveXObject("Microsoft.XMLHTTP");
		
		xh.open("POST", handlerurl, false, null, null);
		xh.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");
		xh.send("guidlist=" + guidlist);

		//call uploader to clear the client state
		uploader.reset();

		if (xh.status != 200)
		{
			alert("http error " + xh.status);
			setTimeout(function() { document.write(xh.responseText); }, 10);
			return;
		}

		var filelist = document.getElementById("filelist");

		var list = eval(xh.responseText); //get JSON objects
		//Process Result:
		for (var i = 0; i < list.length; i++)
		{
			var item = list[i];
			var msg = "Processed: " + list[i].FileName;
			var li = document.createElement("li");
			li.innerHTML = msg;
			filelist.appendChild(li);
		}
	}
	</script>

</head>
<body>
	<div class="demo">                        
        <h2>Selecting multiple files for upload (AJAX)</h2>
		<p>ASP Uploader allows you to select multiple files and upload multiple files at once.</p>
		    
			<%
			Dim uploader
			Set uploader=new AspUploader
			uploader.MaxSizeKB=10240
			uploader.Name="myuploader"
			uploader.MultipleFilesUpload=true
			uploader.InsertText="Select multiple files (Max 10M)"
			%>
			
			<%=uploader.GetString() %>
			
			<ol id="filelist">
			</ol>		
	</div>
</body>
</html>