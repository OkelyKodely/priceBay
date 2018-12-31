<%@ Language="VBScript" %>
<!-- #include file="aspuploader/include_aspuploader.asp" -->
<%

Function CreateGuid()
	Dim hex,str,i,res
	hex="0123456789ABCDEF"
	str="XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
	res=""
	For i=1 To Len(str)
		If Mid(str,i,1)="X" Then
			res = res & Mid(hex,Rnd(16)+1,1)
		Else
			res = res & "-"
		End If
	Next
	CreateGuid=res
End Function
Function CheckGuid(str)
	Dim re
	Set re=new RegExp
	re.Pattern="^[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}$"
	re.IgnoreCase=true
	If not re.Test(str) Then
		Err.Raise -1,"","Invalid Guid" & str
	End If
End Function
Function ToTwoChar(str)
	If Len(str)>1 Then
		ToTwoChar=str
	Else
		ToTwoChar="0" & str
	End If
End Function
Function GetNewDateTime()
	GetNewDateTime=Year(Date()) & "-" & ToTwoChar(Month(Date())) & "-" & ToTwoChar(Day(Date())) & " " & ToTwoChar(Hour(Time())) & "-" & ToTwoChar(Minute(Time())) & "-" & ToTwoChar(Second(Time()))
End Function

Set fso=CreateObject("Scripting.FileSystemObject")
savefolder=Server.MapPath("filemanagerfolder/guest")



downloadfile = Request.QueryString("downloadfile") & ""

Dim files,i,filepath,list

Set files=FSO.GetFolder(savefolder).Files


If downloadfile<>"" Then
	CheckGuid(downloadfile)	
	For Each filepath In files
		If InStr(1,FSO.GetBaseName(filepath),downloadfile,1)>0 Then
			Select Case LCase(FSO.GetExtensionName(filepath))
				Case "jpage"
					Response.ContentType="image/jpeg"
				Case "jpg"
					Response.ContentType="image/jpeg"
				Case "gif"
					Response.ContentType="image/gif"
				Case "png"
					Response.ContentType="image/png"
				Case Else
					Response.ContentType="application/octet-stream"
			End Select
			Response.AddHeader "Content-Disposition","attachment; filename=""" & Mid(fso.GetBaseName(filepath),58) & """"
			
			Dim data,stream
			Set stream=CreateObject("ADODB.Stream")
			stream.Mode=3
			stream.Type=1
			stream.Open()
			stream.LoadFromFile(filepath)
			Dim ws,cs
			ws=0
			while ws<stream.Size
				cs=stream.Size-ws
				If cs>1000 Then
					cs=1000
				End If
				data=stream.Read(cs)
				Response.BinaryWrite(data)
				Response.Flush()
				ws=ws+cs
			wend
			stream.Close()
			Response.End()
		End If
	Next
End If



Set uploader=new AspUploader

If Request.Form("guidlist")&""<>"" Then
	list=Split(Request.Form("guidlist"),"/")
	For i=0 to Ubound(list)
		Set mvcfile=uploader.GetUploadedFile(list(i))		
		fso.MoveFile mvcfile.FilePath,savefolder & "\" & GetNewDateTime() & "." & mvcfile.FileGuid & "." & mvcfile.FileName & ".resx"
	Next
End If


If Request.Form("deleteid")&""<>"" Then
	CheckGuid(Request.Form("deleteid"))
	For Each filepath In files
		If InStr(1,FSO.GetBaseName(filepath),Request.Form("deleteid"),1)>0 Then
			fso.DeleteFile(filepath)
		End If
	Next
End If

Dim index
index=0
Response.Write("[")
For Each filepath In files
	index=index+1
	If index>1 Then
		Response.Write(",")
	End If
	Dim parts
	parts=Split(fso.GetBaseName(filepath),".")
	Response.Write("{UploadTime:'")
	Response.Write(parts(0))
	Response.Write("'")
	Response.Write(",FileID:'")
	Response.Write(parts(1))
	Response.Write("'")
	Response.Write(",FileName:'")
	Response.Write(Mid(fso.GetBaseName(filepath),58))
	Response.Write("'")
	Response.Write(",FileSize:'")
	Response.Write(fso.GetFile(filepath).Size)
	Response.Write("'")
	Response.Write(",FileUrl:'misc-filemanager-handler.asp?downloadfile=")
	Response.Write(parts(1))
	Response.Write("'")
	Response.Write("}")
Next
Response.Write("]")

%>
