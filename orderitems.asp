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
    dim oRS

    dim sqlstr

    dim orderid

    orderid = request.querystring("orderid")

    dim a, b

    a = request("a")

    b = request("b")

    if a = "" then
    a = 1
    b = 6
    end if

    dim ssql

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT a.itemid, p.price, p.category, p.image,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY a.itemid DESC) AS 'RowNumber'"
    ssql = ssql & "    FROM orderitems a INNER JOIN products p ON a.itemid = p.itemid WHERE a.orderid="&orderid
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

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
          <div style = "float:left; width: 50px; height: 30px">
      <a href='orderitems.asp?orderid=<%=orderid%>&a=<%=a-6%>&b=<%=b-6%>'>less...</a>
    </div>
    <%

    while not oRS.eof
      %>
      <div style = "width:100%;float:left">

      <div style="float:left;width:180px"><a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("itemid")%></a></div>
      <div style="float:left;width:120px">$<%=oRS("price")%> USD</div>
      <div style="float:left;width:120px"><%=oRS("category")%></div>
      <div style="float:left;width:120px"><img src='/productitems/<%=oRS("image")%>'></div>

      </div><br>
      <%
      oRS.movenext
    wend
    %>

    </div>
      <div style = "float:left; width: 50px; height: 30px">
      <a href='orderitems.asp?orderid=<%=orderid%>&a=<%=a+6%>&b=<%=b+6%>'>more...</a>
      </div>

  </div>

    <h1>&nbsp;</h1>
<%
oConnection.close()
%>
    <!-- #include file="inc/footer.inc" -->
