  <!-- #include file="inc/header.inc" -->
  <h1>&nbsp;</h1>
  <div class="shop">
  
    <div class="shoptitle">
      <span style="font-size:26">Your <span onclick="window.location.href='orders.asp'"><u>Order History</u></span> With priceBay</span>
    </div>

    <p>
      &nbsp;
    </p>

    <p>
      &nbsp;
    </p>

    <div style="width:650px">
    <%
    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"

    dim sqlstr

    dim orderid

    orderid = request.querystring("orderid")

    sqlstr = "SELECT a.itemid, p.* FROM orderitems a INNER JOIN products p ON a.itemid = p.itemid WHERE a.orderid="&orderid

    set oRS = oConnection.Execute(sqlstr)

    response.write "<h1>Order ID: " & orderid & "</h1>"
    %>

    <div style = "width:100%;float:left">

    <div style="float:left;width:180px">item id</div>
    <div style="float:left;width:120px">price</div>
    <div style="float:left;width:120px">category</div>
    <div style="float:left;width:120px">image</div>
    
    </div>
    
    <div style = "width:800px;float:left">
      <span><hr style="color:#f0f0f0"></span>
    </div>
    <%

    while not oRS.eof
      %>
      <div style = "width:100%;float:left">

      <div style="float:left;width:180px"><%=oRS("itemid")%></div>
      <div style="float:left;width:120px">$<%=oRS("price")%> USD</div>
      <div style="float:left;width:120px"><%=oRS("category")%></div>
      <div style="float:left;width:120px"><img src='/productitems/<%=oRS("image")%>'></div>

      </div><br>
      <%
      oRS.movenext
    wend
    %>
    </div>

  </div>
    <!-- #include file="inc/footer.inc" -->
