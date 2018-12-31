<%@ Language="VBScript" %>
<!-- #include file="aspuploader/include_aspuploader.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>
		Form - Keeping state after submitting
	</title>
	<link href="demo.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="demo"> 
			
			<h2>Keeping state after submitting</h2>
			<p>A sample demonstrates how to keep uploaded file state during page postbacks.</p>

			<!-- do not need enctype="multipart/form-data" -->
			<form id="form1" method="POST">
				<%
				Dim uploader
				Set uploader=new AspUploader
				uploader.MaxSizeKB=10240
				uploader.Name="myuploader"
				uploader.MultipleFilesUpload=true
				uploader.InsertText="Select multiple files (Max 10M)"
				%>
				
				<%=uploader.GetString() %>
				
				<br/><br/><br/>
				
<%

Dim processedlist,guidarr
processedlist=Request.Form("processedlist") & ""
'If processedlist<> "" Then
'	guidarr=Split(processedlist,"/")
'	processedlist=""
'	For i=0 To UBound(guidarr)
'		Set mvcfile=uploader.GetUploadedFile(guidarr(i));
'	Next
'End If

If Request.Form("myuploader")&""<>"" Then
	
	If processedlist="" Then
		processedlist=Request.Form("myuploader")
	Else
		processedlist=processedlist & "/" & Request.Form("myuploader")
	End If
End If

If processedlist<>"" Then
	Dim list,i
	list=Split(processedlist,"/")

	Response.Write("<table style='border-collapse: collapse' class='Grid' border='0' cellspacing='0' cellpadding='2'>")
	For i=0 to Ubound(list)

		Dim mvcfile
		Set mvcfile=uploader.GetUploadedFile(list(i))
		
		Response.Write("<tr>")
		Response.Write("<td>")
		Response.Write("<img src='aspuploader/resources/circle.png' border='0' />")
		Response.Write("</td>")
		Response.Write("<td>")
		Response.Write(mvcfile.FileName)
		Response.Write("</td>")
		Response.Write("<td>")
		Response.Write(mvcfile.FileSize)
		Response.Write("</td>")
		Response.Write("</tr>")
		
	Next
	
	Response.Write("</table>")
	
End If

%>

				<input type='hidden' name='processedlist' value='<%= processedlist %>' />

				<br /><br />
				<input type='submit' value="Submit Form" />
				Now: <%=Time() %>
				
			</form>
			
				
	</div>
</body>
</html>
