<%@ Language="VBScript" %>
<!-- #include file="inc/upload.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>
    Form - Start uploading manually
  </title>
  <link href="demo.css" rel="stylesheet" type="text/css" />
      
  <script type="text/javascript">
  window.history.back();
  function doStart()
  {
    var uploadobj = document.getElementById('myuploader');
    if (uploadobj.getqueuecount() > 0)
    {
      uploadobj.startupload();
    }
    else
    {
      alert("Please browse files for upload");
    }
  }
  </script>
  
</head>
<body>
  <div class="demo">     
      <h2>Start uploading manually</h2>
      <p>This sample demonstrates how to start uploading manually after file selection vs automatically.</p>

      <!-- do not need enctype="multipart/form-data" -->
      <form id="form1" method="POST">
        <%
        Dim uploader
        Set uploader=new AspUploader
        uploader.MaxSizeKB=10240
        uploader.Name="myuploader"
        uploader.InsertText="Upload File (Max 10M)"
        uploader.MultipleFilesUpload=true
        
        uploader.ManualStartUpload=true
        
        %>
        <%=uploader.GetString() %>
      
        <br /><br /><br />
        <button id="submitbutton" onclick="doStart();return false;">Start Uploading Files</button>

      </form>
      
      <br/><br/><br/>
<%

If Request.Form("myuploader")&""<>"" Then

  Dim list,i
  list=Split(Request.Form("myuploader"),"/")

  For i=0 to Ubound(list)
    if i>0 then
      Response.Write("<hr/>")
    end if
    Dim mvcfile
    Set mvcfile=uploader.GetUploadedFile(list(i))

    Response.Write("<div style='font-family:Fixedsys'>")
    Response.Write("Uploaded File:")
    Response.Write("<br/>FileName : ")
    Response.Write(mvcfile.FileName)
    Response.Write("<br/>FileSize : ")
    Response.Write(mvcfile.FileSize)
    Response.Write("<br/>FilePath : ")
    Response.Write(mvcfile.FilePath)
    Response.Write("</div>")
  Next
End If

%>
        
  </div>
</body>
</html>