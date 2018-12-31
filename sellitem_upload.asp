  <!-- #include file="inc/header.inc" -->

  <!-- #include file="aspuploader/include_aspuploader.asp" -->

  <div class="shop">
  
    <div class="shoptitle">
      <span style="font-size:26">Sell</span>
    </div>

  <p>
    <img src="/graphics/images/sellonebay.png">
  </p>

<%
dim up, name, price, description, shippingpolicy, duration, image

up = request.form("up")

  if up = "yes" then
    
    dim oConnection

    dim oRS

    name = request.form("name")

    price = request.form("price")

    description = request.form("description")

    shippingpolicy = request.form("shippingpolicy")

    duration = request.form("duration")

    image = request.form("filename")

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"
    
    dim sqlstr

    sqlstr = "INSERT INTO sellproducts (username, name, price, description, shippingpolicy, duration, image, inputdate) VALUES ('"&session("username")&"','"&name&"',"&price&",'"&description&"','"&shippingpolicy&"',"&duration&", '"&image&"', getDate())"

    oConnection.Execute(sqlstr)

    response.write "Uploaded!"

  end if

%>

    <form name="frmSend" method="POST" action="sellitem_upload.asp"  >
      <input type="hidden" name="up" value="yes">
      <div style="float:left;width:140px">Item Name:</div>
      <div style="loat:left"><input type="text" name="name"></div>
      <span><br></span>
      <div style="float:left;width:140px">Listing Price:</div>
      <div style="loat:left"><input type="text" name="price"></div>
      <span><br></span>
      <input id="fn" type="hidden" name="filename">
      <div style="loat:left"><a href=""></a></div>
      <span><br></span>
      <div style="float:left;width:140px">Description:</div>
      <div style="loat:left"><textarea name="description" style="width:200px;height:100px"></textarea></div>
      <span><br></span>
      <div style="float:left;width:140px">Shipping Policy:</div>
      <div style="loat:left"><input type="text" name="shippingpolicy"></div>
      <span><br></span>
      <div style="float:left;width:140px">Listing Duration:</div>
      <div style="loat:left"><input type="text" name="duration" style="width:50px;height:50px"></div>
      <span><br></span>
      <p></p>
    <%
        Dim uploader
        Set uploader=new AspUploader
        uploader.Name="myuploader"
        
        uploader.MaxSizeKB=10240
        uploader.InsertText="Submit"
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

  <div style="position:relative;left:200px;top:100px">
    <!-- #include file="inc/footer.inc" -->
  </div>