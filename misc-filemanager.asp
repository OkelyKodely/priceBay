<%@ Language="VBScript" %>
<!-- #include file="aspuploader/include_aspuploader.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>
		Misc - File manager using AJAX
	</title>
	<link href="demo.css" rel="stylesheet" type="text/css" />
				
	<script type="text/javascript">
		var handlerurl='misc-filemanager-handler.asp'
	</script>
	<script type="text/javascript">
		function DoMyAjax(guidlist, deleteid)
		{
			guidlist = guidlist || "";
			deleteid = deleteid || "";

			//Send Request
			var xh;
			if (window.XMLHttpRequest)
				xh = new window.XMLHttpRequest();
			else
				xh = new ActiveXObject("Microsoft.XMLHTTP");
			xh.open("POST", handlerurl, false, null, null);
			xh.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");
			xh.send("guidlist=" + guidlist + "&deleteid=" + deleteid);

			if (xh.status != 200)
			{
				alert("http error " + xh.status);
				setTimeout(function() { document.write(xh.responseText); }, 10);
				return;
			}

			var filelist = document.getElementById("filelist");

			var div = document.getElementById("myfilescontainer");

			//alert(xh.responseText);
			var list = eval(xh.responseText); //get JSON objects

			if (list.length > 0)
			{

				var table = document.createElement("TABLE");

				table.border = 1;
				table.cellSpacing = 0;
				table.cellPadding = 4;
				table.style.borderCollapse = "collapse";
				table.style.width = "640px";

				var th = table.insertRow(-1);
				th.style.backgroundColor = "steelblue";
				th.style.color = "white";
				th.style.textAlign = "center";
				th.insertCell(-1).innerHTML = "Time";
				th.insertCell(-1).innerHTML = "FileName";
				th.insertCell(-1).innerHTML = "Size";
				th.insertCell(-1).innerHTML = "&nbsp;";



				//Process Result:
				for (var i = 0; i < list.length; i++)
				{
					var item = list[i];
					var row = table.insertRow(-1);
					var td1 = row.insertCell(-1);
					var td2 = row.insertCell(-1);
					var td3 = row.insertCell(-1);
					var td4 = row.insertCell(-1);

					td1.style.width = "160px";
					td1.innerHTML = item.UploadTime;

					td2.innerHTML = "<a href='" + item.FileUrl + "' target='_blank'>" + item.FileName + "</a>";

					td2.title = item.Description;

					td3.style.width = "80px";
					td3.style.textAlign = "right";
					td3.innerHTML = item.FileSize;

					td4.style.width = "45px";
					td4.innerHTML = "<a href='javascript:void(0)' onclick='DoMyDelete(\"" + item.FileName + "\",\"" + item.FileID + "\");return false;'>Delete</a>";

				}

				div.innerHTML = "";
				div.appendChild(table);
			}
			else
			{
				div.innerHTML = "<div style='padding:8px;border:solid 1px steelblue;color:maroon;'>No files.</div>";
			}
		}

		function DoMyDelete(filename, fileid)
		{
			if (confirm("Are you sure you want to delete " + filename + "?"))
			{
				DoMyAjax("", fileid)
			}
		}

		function CuteWebUI_AjaxUploader_OnPostback()
		{

			var uploader = document.getElementById("myuploader");
			var guidlist = uploader.value;

			DoMyAjax(guidlist);

			//call uploader to clear the client state
			uploader.reset();
		}
	</script>

</head>
<body>
	<div class="demo">

    <h2>File storage application powered by Ajax</h2>
    <p>This example shows you how to use ASP Uploader create an online file storage application. Make your file upload page more user friendly!</p>
    <ul>
			<li>Allowed file types: jpeg, jpg, gif, png, zip</li>
	</ul>  
    <div style="padding:4px">
		
		<%
		Dim uploader
		Set uploader=new AspUploader
		uploader.MaxSizeKB=1024
		uploader.AllowedFileExtensions="jpeg,jpg,gif,png,zip"
		uploader.Name="myuploader"
		uploader.InsertText="Select multiple files (Max 1M)"
		uploader.MultipleFilesUpload=true
		%>
		
		<%=uploader.GetString() %>
		
		<hr />

	</div>
	
	<br /><br />
    <div style="padding:4px" id="myfilescontainer">
		Loading....
    </div>
    
    <script type="text/javascript">
		//first load.
    	DoMyAjax("");
    </script>
			
		
	</div>
</body>
</html>

