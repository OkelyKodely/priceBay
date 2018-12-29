  <!-- #include file="inc/header.inc" -->
  <div class="shop">
  
    <div class="shoptitle">
      <span style="font-size:26">Your Order History With pBay</span>
    </div>

    <p>

    </p>

    <div style="width:650px">
    <%
    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"

    dim sqlstr

    dim username

    username = session("username")

    sqlstr = "SELECT * FROM [order] WHERE username='"&username&"' ORDER BY orderid DESC"

    set oRS = oConnection.Execute(sqlstr)

    %>
    
    <div style = "width:100%;float:left">

    <div style="float:left;width:180px">order id</div>
    <div style="float:left;width:180px">item id</div>
    <div style="float:left;width:180px">price</div>
    <div>buy date</div>

    </div>
    
    <div style = "width:100%;float:left">
      <span><hr></span>
    </div>
    <%

    while not oRS.eof
      %>
      <div style = "width:100%;float:left">

      <div style="float:left;width:180px"><%=oRS("orderid")%></div>
      <div style="float:left;width:180px"><a href=/item.asp?itemid=<%=oRS("itemid")%>>View Item #<%=oRS("itemid")%></a></div>
      <div style="float:left;width:120px">$<%=oRS("price")%> USD</div>
      <div>
        <nobr>
          <%=oRS("inputdate")%>
        </nobr>

      </div>

      </div><br>
      <%
      oRS.movenext
    wend
    %>
    </div>

  </div>
  
  <div style="position:relative;left:200px;top:100px">
    <!-- #include file="inc/footer.inc" -->
  </div>