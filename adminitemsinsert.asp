  <!-- #include file="aspuploader/include_aspuploader.asp" -->
  <%
  server.scripttimeout = 1000
  
  dim username
  dim password

  if session("ausername") = "" then

    response.redirect "adminlogin.asp"

  else

    username = session("ausername")
    
  end if

  %>
  <div style="float:left; width:100%">
  <%
  if username = "" then
  else

    dim sqlstr

dim oConnection

set oConnection = server.createobject("ADODB.Connection")

oConnection.Open "odbc2","sa","coppersink21"

dim up, newarrival, name, price, description, category, image

up = request.form("up")

  if up = "yes" then
    
    dim bestseller

    newarrival = request.form("newarrival")

    if newarrival = "on" then

      newarrival = "1"

    else

      newarrival = "NULL"

    end if

    bestseller = request.form("bestseller")

    if bestseller = "on" then

      bestseller = "1"

    else

      bestseller = "NULL"

    end if

    name = request.form("name")

    price = request.form("price")

    description = request.form("dsc")

    category = request.form("category")

    image = request.form("filename")

    dim theitemid
    theitemid = request.form("theitemid")

    if theitemid = "" then
      theitemid = "NULL"
    end if

    sqlstr = "INSERT INTO products (bestseller, recommendation, newarrivals, name, price, dsc, category, image, discount) VALUES ("&bestseller&","&theitemid&","&newarrival&",'"&name&"',"&price&",'"&description&"','"&category&"','"&image&"', 25)"
'response.write sqlstr
    oConnection.Execute(sqlstr)

    response.write "Uploaded!"

  end if

    %>
    <a href="adminitems.asp">Admin Items</a> <a href="adminitemsinsert.asp">Items Insert</a>
    <%

  if username = "admin_cho4321" then
  session("ausername") = username
  %>
  <form method="post" action="">
  <input type="hidden" name="up" value="yes">
  <input id="fn" type="hidden" name="filename">
  <input type="text" name="newarrival"> New Arrival?<br>
  <input type="text" name="bestseller"> Best Seller?<br>
  Name: <input type="text" name="name"><br>
  Category: <input type="text" name="category"><br>
  Recommendation: <input type="text" name="theitemid"><br>
  Price: <input type="text" name="price"><br>
  Description: <textarea name="dsc" style="width:300px;height:100px"></textarea><br>
    <%
        Dim uploader
        Set uploader=new AspUploader
        uploader.Name="myuploader"
        
        uploader.MaxSizeKB=10240
        uploader.InsertText="Submit Item"
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
    document.getElementById("fn").value = task.FileName;
    alert(task.FileName + " is uploaded!");
  }
  </script>
</form>
  <%
  else
    if session("ausername") = "" then
      response.write "not signed in"
    end if
  end if
  end if
%>
  </div>

<h1>&nbsp;</h1>
