  <!-- #include file="inc/header.inc" -->
  <h1>&nbsp;</h1>
  <div class="shop">
  
    <div class="shoptitle" style="position:relative;top:-140px">
      <span style="font-size:26">Your Order History With priceBay</span>
    </div>

    <p>
      &nbsp;
    </p>

    <p>
      &nbsp;
    </p>

    <div style="width:650px;position:relative;top:-220px">
    <%
    dim oRS

    dim sqlstr

    dim username

    username = session("username")

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
    ssql = ssql & "    SELECT *,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY orderid DESC) AS 'RowNumber'"
    ssql = ssql & "    FROM [order] WHERE username = '"&username&"'"
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    %>

    <div style = "width:100%;float:left;position:relative;top:0px">

    <div style="float:left;width:180px">order id</div>
    <div style="float:left;width:180px">price</div>
    <div>buy date</div>

    </div>
    
    <div style = "width:800px;float:left">
      <span><hr style="color:#f0f0f0"></span>
    </div>
          <div style = "float:left; width: 50px; height: 30px">
      <a href='orders.asp?a=<%=a-6%>&b=<%=b-6%>'>less...</a>
    </div>

    <%

    dim count
    count = 0
    while not oRS.eof
      %>
      <div style = "width:100%;float:left">
        <div stylef = "width:800px;float:left;position:relative;left:-100px">
          <div style="float:left;width:180px"><a href='orderitems.asp?orderid=<%=oRS("orderid")%>'%><%=oRS("orderid")%></div>
          <div style="float:left;width:120px">$<%=oRS("price")%> USD</div>
          <div>
            <nobr>
              <%=oRS("inputdate")%>
            </nobr>
          </div>
        </div><br>
      </div>
      <%
      count = count + 1
      oRS.movenext
    wend

oConnection.close()
%>

      <div style = "float:left; width: 100%; height: 30px">
        <a href='orders.asp?a=<%=a+6%>&b=<%=b+6%>'><img src="/graphics/images/more.png"></a>
      </div>
    </div>

    <h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
    <h1>&nbsp;</h1>

    <!-- #include file="inc/footer.inc" -->
