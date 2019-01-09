  <!-- #include file="inc/header.inc" -->
  <%
  dim category

  category = request.querystring("category")

  if category = "" then
    category = "all"
  end if
  %>
  <h1>&nbsp;</h1>
  <div class="shop">
  
    <div class="shoptitle">
      <span style="font-size:26">Auction Won Item</span>
    </div>

    <%
    dim cartid

    cartid = session("cartid")

    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"

    dim itemid

    itemid = request.querystring("id")
    
    dim sqlstr

    sqlstr = "SELECT * FROM sellproducts WHERE id='" & itemid & "'"

    set oRS = oConnection.Execute(sqlstr)

    if not oRS.eof then
      dim dsc
      dsc = oRS("description")
    %>
  <div id = "container" style = "width:100%">
      <div id = "middle" style = "float:left; width: 250;">
          <a href=item.asp?itemid=<%=oRS("id")%>><img width="220" src=/productitems/<%=oRS("image")%>></a>
          <br><%=oRS("name")%>
      </div>
      <div id = "right" style = "float:left; width: 200;">
        <span style="color:#000">Description:</span>
        <%=dsc%><br><br>
        <span style="color:#000">Price:</span>
        $<%=oRS("price")%><br><br>
        <form method="post" action="buysellproducts.asp">
          <input type="hidden" name="price" value=<%=oRS("price")%>>
          <input type="submit" value="Make Payment Now" style="width:200px; height:40px">
        </form>
      </div>
  </div>
  <%
  end if
  %>

  </div>
  
  <div style="position:relative;left:200px;top:100px">
    <!-- #include file="inc/footer.inc" -->
  </div>