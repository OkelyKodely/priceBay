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

sConnection = "Dsn=odbc1;Integrated Security=True"

set oConnection = server.createobject("ADODB.Connection")

oConnection.Open "odbc2","sa","coppersink21"

dim up, itemid, newarrival, name, price, description, category, image

itemid = request("itemid")

up = request.form("up")

  if up = "yes" then
    
    dim oRS, bestseller

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

    sqlstr = "UPDATE products set bestseller = "&bestseller&", recommendation = "&theitemid&", newarrivals = "&newarrival&", name='"&name&"',price="&price&",dsc='"&description&"',category='"&category&"',image='"&image&"', discount=25 WHERE itemid = " & itemid
'response.write sqlstr
    oConnection.Execute(sqlstr)

    response.write "Saved!"

  end if

    %>
    <a href="adminitems.asp">Admin Items</a>
    <%

  if username = "admin_cho4321" then
  session("ausername") = username
    sqlstr = "SELECT bestseller,image,itemid,name,price,discount,category,newarrivals,dsc FROM products WHERE itemid = " & itemid
'response.write sqlstr
    set rs = oConnection.Execute(sqlstr)
    if not rs.eof then
  %>
  <form method="post" action="">
  <input type="hidden" name="itemid" value='<%=rs("itemid")%>'>
  <input type="hidden" name="up" value="yes">
  <input id="fn" type="hidden" name="filename">
  <%
  if rs("newarrivals") = "1" then
  %>
  <input type="text" name="newarrival" value="on"> New Arrival?<br>
  <%
  else
  %>
  <input type="text" name="newarrival" value="off"> New Arrival?<br>
  <%
  end if
  %>
  <%
  if rs("bestseller") = "1" then
  %>
  <input type="text" name="bestseller" value="on"> Best Seller?<br>
  <%
  else
  %>
  <input type="text" name="bestseller" value="off"> Best Seller?<br>
  <%
  end if
  %>
  Name: <input type="text" name="name" value='<%=rs("name")%>'><br>
  Category: <input type="text" name="category" value='<%=rs("category")%>'><br>
  Recommendation: <input type="text" name="theitemid"><br>
  Price: <input type="text" name="price" value='<%=rs("price")%>'><br>
  <img src='/productitems/<%=rs("image")%>'><br>
  Description: <textarea name="dsc" style="width:300px;height:100px"><%=rs("dsc")%></textarea><br>
    <%
        Dim uploader
        Set uploader=new AspUploader
        uploader.Name="myuploader"
        
        uploader.MaxSizeKB=10240
        uploader.InsertText="Save Item"
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
    end if
  else
    if session("ausername") = "" then
      response.write "not signed in"
    end if
  end if
  end if
%>
  </div>

<h1>&nbsp;</h1>
