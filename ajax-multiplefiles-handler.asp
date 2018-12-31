<%@ Language="VBScript" %>
<!-- #include file="aspuploader/include_aspuploader.asp" -->
<%

Dim uploader,mvcfile
Set uploader=new AspUploader

If Request.Form("guidlist")&""<>"" Then
	Dim list,i
	list=Split(Request.Form("guidlist"),"/")
	Response.Write("[")
	For i=0 to Ubound(list)
		if i>0 then
			Response.Write(",")
		end if
		Set mvcfile=uploader.GetUploadedFile(list(i))
		Response.Write("{")
		Response.Write("FileGuid:'" & mvcfile.FileGuid & "'")
		Response.Write(",")
		Response.Write("FileSize:'" & mvcfile.FileSize & "'")
		Response.Write(",")
		Response.Write("FileName:'" & mvcfile.FileName & "'")
		Response.Write("}")
	Next
	Response.Write("]")
End If

Response.End()

%>
























