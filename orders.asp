  <!-- #include file="inc/header.inc" -->
  <h1>&nbsp;</h1>
  <div class="shop">
  
    <div class="shoptitle">
      <span style="font-size:26">Your Order History With priceBay</span>
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

    dim username

    username = session("username")

    sqlstr = "SELECT * FROM [order] WHERE username='"&username&"' ORDER BY orderid DESC"

    set oRS = oConnection.Execute(sqlstr)

    %>

    <div style = "width:100%;float:left">

    <div style="float:left;width:180px">order id</div>
    <div style="float:left;width:180px">price</div>
    <div>buy date</div>

    </div>
    
    <div style = "width:800px;float:left">
      <span><hr style="color:#f0f0f0"></span>
    </div>
    <%

    while not oRS.eof
      %>
      <div style = "width:100%;float:left">

      <div style="float:left;width:180px"><a href='orderitems.asp?orderid=<%=oRS("orderid")%>'%><%=oRS("orderid")%></div>
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
    <!-- #include file="inc/footer.inc" -->
