<script runat="server" language="JScript" src="resources/coreimpl.js"></script>
<script runat=server language=VBScript>

Class AspUploader
	
	Private internalimpl
	
	Public Property Get Impl
		If internalimpl = EMPTY Then
			Set internalimpl=AjaxUploaderCreateCoreImplemenation(Me)
		End If
		Set Impl=internalimpl
	End Property
	
	
	Private Sub Class_Initialize()
		
	End Sub

	
	Public Property Get Name
		Name=Impl.Name
	End Property
	Public Property Let Name(val)
		Impl.Name=val
	End Property
	
	Public Property Get MaxSizeKB
		MaxSizeKB=Impl.MaxSizeKB
	End Property
	Public Property Let MaxSizeKB(val)
		Impl.MaxSizeKB=val
	End Property

	Public Property Get AllowedFileExtensions
		AllowedFileExtensions=Impl.AllowedFileExtensions
	End Property
	Public Property Let AllowedFileExtensions(val)
		Impl.AllowedFileExtensions=val
	End Property

	Public Property Get DialogFilter
		DialogFilter=Impl.DialogFilter
	End Property
	Public Property Let DialogFilter(val)
		Impl.DialogFilter=val
	End Property

	Public Property Get InsertText
		InsertText=Impl.InsertText
	End Property
	Public Property Let InsertText(val)
		Impl.InsertText=val
	End Property

	Public Property Get InsertButtonID
		InsertButtonID=Impl.InsertButtonID
	End Property
	Public Property Let InsertButtonID(val)
		Impl.InsertButtonID=val
	End Property

	Public Property Get CancelButtonID
		CancelButtonID=Impl.CancelButtonID
	End Property
	Public Property Let CancelButtonID(val)
		Impl.CancelButtonID=val
	End Property

	Public Property Get ProgressTextID
		ProgressTextID=Impl.ProgressTextID
	End Property
	Public Property Let ProgressTextID(val)
		Impl.ProgressTextID=val
	End Property

	Public Property Get ProgressCtrlID
		ProgressCtrlID=Impl.ProgressCtrlID
	End Property
	Public Property Let ProgressCtrlID(val)
		Impl.ProgressCtrlID=val
	End Property

	Public Property Get ShowProgressBar
		ShowProgressBar=Impl.ShowProgressBar
	End Property
	Public Property Let ShowProgressBar(val)
		Impl.ShowProgressBar=val
	End Property

	Public Property Get ShowProgressInfo
		ShowProgressInfo=Impl.ShowProgressInfo
	End Property
	Public Property Let ShowProgressInfo(val)
		Impl.ShowProgressInfo=val
	End Property

	Public Property Get UploadType
		UploadType=Impl.UploadType
	End Property
	Public Property Let UploadType(val)
		Impl.UploadType=val
	End Property
	
	Public Property Get UploadCursor
		UploadCursor=Impl.UploadCursor
	End Property
	Public Property Let UploadCursor(val)
		Impl.UploadCursor=val
	End Property

	Public Property Get ManualStartUpload
		ManualStartUpload=Impl.ManualStartUpload
	End Property
	Public Property Let ManualStartUpload(val)
		Impl.ManualStartUpload=val
	End Property

	Public Property Get ShowFrameBrowseButton
		ShowFrameBrowseButton=Impl.ShowFrameBrowseButton
	End Property
	Public Property Let ShowFrameBrowseButton(val)
		Impl.ShowFrameBrowseButton=val
	End Property

	Public Property Get MultipleFilesUpload
		MultipleFilesUpload=Impl.MultipleFilesUpload
	End Property
	Public Property Let MultipleFilesUpload(val)
		Impl.MultipleFilesUpload=val
	End Property

	Public Property Get MaxFilesLimit
		MaxFilesLimit=Impl.MaxFilesLimit
	End Property
	Public Property Let MaxFilesLimit(val)
		Impl.MaxFilesLimit=val
	End Property

	Public Property Get NumFilesShowCancelAll
		NumFilesShowCancelAll=Impl.NumFilesShowCancelAll
	End Property
	Public Property Let NumFilesShowCancelAll(val)
		Impl.NumFilesShowCancelAll=val
	End Property

	Public Property Get FlashUploadPage
		FlashUploadPage=Impl.FlashUploadPage
	End Property
	Public Property Let FlashUploadPage(val)
		Impl.FlashUploadPage=val
	End Property

	Public Property Get ButtonOnClickScript
		ButtonOnClickScript=Impl.ButtonOnClickScript
	End Property
	Public Property Let ButtonOnClickScript(val)
		Impl.ButtonOnClickScript=val
	End Property

	Public Property Get ProgressTextTemplate
		ProgressTextTemplate=Impl.ProgressTextTemplate
	End Property
	Public Property Let ProgressTextTemplate(val)
		Impl.ProgressTextTemplate=val
	End Property

	Public Property Get CancelAllMsg
		CancelAllMsg=Impl.CancelAllMsg
	End Property
	Public Property Let CancelAllMsg(val)
		Impl.CancelAllMsg=val
	End Property

	Public Property Get CancelUploadMsg
		CancelUploadMsg=Impl.CancelUploadMsg
	End Property
	Public Property Let CancelUploadMsg(val)
		Impl.CancelUploadMsg=val
	End Property

	Public Property Get UploadProcessingMsg
		UploadProcessingMsg=Impl.UploadProcessingMsg
	End Property
	Public Property Let UploadProcessingMsg(val)
		Impl.UploadProcessingMsg=val
	End Property

	Public Property Get FileTooLargeMsg
		FileTooLargeMsg=Impl.FileTooLargeMsg
	End Property
	Public Property Let FileTooLargeMsg(val)
		Impl.FileTooLargeMsg=val
	End Property

	Public Property Get MaxFilesLimitMsg
		MaxFilesLimitMsg=Impl.MaxFilesLimitMsg
	End Property
	Public Property Let MaxFilesLimitMsg(val)
		Impl.MaxFilesLimitMsg=val
	End Property

	Public Property Get WindowsDialogLimitMsg
		WindowsDialogLimitMsg=Impl.WindowsDialogLimitMsg
	End Property
	Public Property Let WindowsDialogLimitMsg(val)
		Impl.WindowsDialogLimitMsg=val
	End Property

	Public Property Get FileTypeNotSupportMsg
		FileTypeNotSupportMsg=Impl.FileTypeNotSupportMsg
	End Property
	Public Property Let FileTypeNotSupportMsg(val)
		Impl.FileTypeNotSupportMsg=val
	End Property

	Public Property Get UploadingMsg
		UploadingMsg=Impl.UploadingMsg
	End Property
	Public Property Let UploadingMsg(val)
		Impl.UploadingMsg=val
	End Property

	Public Property Get FlashWarningImage
		FlashWarningImage=Impl.FlashWarningImage
	End Property
	Public Property Let FlashWarningImage(val)
		Impl.FlashWarningImage=val
	End Property

	Public Property Get ProgressPanelWidth
		ProgressPanelWidth=Impl.ProgressPanelWidth
	End Property
	Public Property Let ProgressPanelWidth(val)
		Impl.ProgressPanelWidth=val
	End Property

	Public Property Get ProgressBarHeight
		ProgressBarHeight=Impl.ProgressBarHeight
	End Property
	Public Property Let ProgressBarHeight(val)
		Impl.ProgressBarHeight=val
	End Property

	Public Property Get ProgressInfoStyle
		ProgressInfoStyle=Impl.ProgressInfoStyle
	End Property
	Public Property Let ProgressInfoStyle(val)
		Impl.ProgressInfoStyle=val
	End Property

	Public Property Get ProgressBarStyle
		ProgressBarStyle=Impl.ProgressBarStyle
	End Property
	Public Property Let ProgressBarStyle(val)
		Impl.ProgressBarStyle=val
	End Property

	Public Property Get ProgressBarBackgroundImage
		ProgressBarBackgroundImage=Impl.ProgressBarBackgroundImage
	End Property
	Public Property Let ProgressBarBackgroundImage(val)
		Impl.ProgressBarBackgroundImage=val
	End Property

	Public Property Get ProgressBarBorderStyle
		ProgressBarBorderStyle=Impl.ProgressBarBorderStyle
	End Property
	Public Property Let ProgressBarBorderStyle(val)
		Impl.ProgressBarBorderStyle=val
	End Property

	Public Property Get ProgressPicture
		ProgressPicture=Impl.ProgressPicture
	End Property
	Public Property Let ProgressPicture(val)
		Impl.ProgressPicture=val
	End Property

	Public Property Get InputboxCSSText
		InputboxCSSText=Impl.InputboxCSSText
	End Property
	Public Property Let InputboxCSSText(val)
		Impl.InputboxCSSText=val
	End Property

	Public Property Get TempDirectory
		TempDirectory=Impl.TempDirectory
	End Property
	Public Property Let TempDirectory(val)
		Impl.SetTempDirectory(val)
	End Property

	Public Property Get SaveDirectory
		SaveDirectory=Impl.SaveDirectory
	End Property
	Public Property Let SaveDirectory(val)
		Impl.SaveDirectory=val
	End Property

	Public Property Get ResourceHandler
		ResourceHandler=Impl.ResourceHandler
	End Property
	Public Property Let ResourceHandler(val)
		Impl.ResourceHandler=val
	End Property

	Public Property Get UploadUrl
		UploadUrl=Impl.UploadUrl
	End Property
	Public Property Let UploadUrl(val)
		Impl.UploadUrl=val
	End Property
	
	Public Property Get LicenseUrl
		LicenseUrl=Impl.LicenseUrl
	End Property
	Public Property Let LicenseUrl(val)
		Impl.LicenseUrl=val
	End Property
	
	Public Property Get LicenseFile
		LicenseFile=Impl.LicenseFile
	End Property
	Public Property Let LicenseFile(val)
		Impl.LicenseFile=val
	End Property
	
	
	Public Function Render()
		Response.Write(Me.GetString())
	End Function
	
	Public Function GetString()
		GetString = Impl.GetString()
	End Function
	
	
	Public Function GetValidatingFile()
		Dim file
		Set file = new AspUploadFile
		file.Init(Impl.GetValidatingFile())
		Set GetValidatingFile=file
	End Function
	
	Public Function HasUploadedFile(guid)
		HasUploadedFile=Impl.HasUploadedFile(guid)
	End Function
	Public Function GetUploadedFile(guid)
		Dim file
		Set file = new AspUploadFile
		file.Init(Impl.GetUploadedFile(guid))
		Set GetUploadedFile=file
	End Function
	
	Public Function WriteValidationError(msg)
		Impl.WriteValidationError(msg)
	End Function
	
	Public Function WriteValidationOK()
		Impl.WriteValidationOK()
	End Function
	
	Public Function Maintain()
		Impl.Maintain()
	End Function
	
	Public Function ProcessResource()
		Impl.ProcessResource()
		Response.End()
	End Function
	
	
	Public Function Test()
		Test = Impl.Test()
	End Function
	
	Public Function SetSession(name,value)
		Session(name) = value
	End Function
	Public Function SetApplication(name,value)
		Application(name) = value
	End Function
	

	Public Function FindNextReturn(data,start)
		Dim ft
		ft=InStrB(start+1,data,ChrB(10))-1
		if ft<>start then
			FindNextReturn=ft
			Exit Function
		end if
		Dim i,b
		For i=start+1 To LenB(data)
			b=AscB(MidB(data,i,1))
			if b=10 then
				FindNextReturn=i-1
				Exit Function
			end if
		Next
		FindNextReturn=-1
	End Function
	Public Function ParseLine(data,start,length)
		If length<=0 Then
			ParseLine=""
		Else
			ParseLine=BytesToString(MidB(data,start+1,length))
		End If
	End Function
	
	Public Function BinToHex(bytes)
		Dim bslen,i,b,l,h,chars,sb
		chars="0123456789ABCDEF"
		sb=""
		For i=1 To LenB(bytes)
			b=AscB(MidB(bytes,i,1))
			l=b Mod 16
			h=(b-l)/16
			sb = sb & Mid(chars,h+1,1) & Mid(chars,l+1,1)
		Next
		BinToHex=sb
	End Function

	Public Function BytesToString(bytes)	'UTF-8..
		Dim bslen
		Dim i, k , N 
		Dim b , count 
		Dim str
		
		bslen = LenB(bytes)
		str=""

		i = 0
		Do While i < bslen
		   b = AscB(MidB(bytes,i+1,1))
	      
		   If (b And &HFC) = &HFC Then
			 count = 6
			 N = b And &H1
		   ElseIf (b And &HF8) = &HF8 Then
			 count = 5
			  N = b And &H3
		   ElseIf (b And &HF0) = &HF0 Then
			 count = 4
			 N = b And &H7
		   ElseIf (b And &HE0) = &HE0 Then
			 count = 3
			 N = b And &HF
		   ElseIf (b And &HC0) = &HC0 Then
			 count = 2
			 N = b And &H1F
		   Else
			 count = 1
			 str = str & Chr(b)
		   End If
	      
		   If i + count - 1 > bslen Then
			 str = str&"?"
			 Exit Do
		   End If
	      
	        if count>1 then
			   For k = 1 To count - 1
				 b = AscB(MidB(bytes,i+k+1,1))
				 N = N * &H40 + (b And &H3F)
			   Next
			   str = str & ChrW(N)
			end if
			i = i + count
		Loop

		BytesToString = str
	End Function

End Class

Class AspUploadFile
	
	Private f
	
	Public Function Init(jfile)
		Set f=jfile
	End Function
	
	Public Property Get FileGuid
		FileGuid = f.FileGuid
	End Property
	
	Public Property Get FileName
		FileName = f.FileName
	End Property
	
	Public Property Get FilePath
		FilePath = f.FilePath
	End Property
	
	Public Property Get FileSize
		FileSize = f.FileSize
	End Property
	
	Public Function MoveTo(targetpath)
		Dim FSO
		Set FSO=CreateObject("Scripting.FileSystemObject")
		If FSO.FolderExists(targetpath) Then
			FSO.CopyFile f.FilePath,targetpath & "\" & f.FileName
		Else
			FSO.CopyFile f.FilePath,targetpath
		End If
	End Function
	
	Public Function CopyTo(targetpath)
		Dim FSO
		Set FSO=CreateObject("Scripting.FileSystemObject")
		If FSO.FolderExists(targetpath) Then
			FSO.CopyFile f.FilePath,targetpath & "\" & f.FileName
		Else
			FSO.CopyFile f.FilePath,targetpath
		End If
	End Function
	
End Class


</script>
