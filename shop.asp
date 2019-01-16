  <!-- #include file="inc/header.inc" -->
  <div class="shop1" style="width:100%;position:relative;top:30px">

<!--  
  <div style="width:1500px;float:left;height:200px;position:relative;top:-60px">
    <div class="shoptitle" style="float:left;height:260px;position:relative;top:0px">
      <span style="font-size:26;">    <a href="sell.asp"><img src="/graphics/images/sellonebay.png"></a>&nbsp;&nbsp;<a href="categories.asp"><img src="/graphics/images/20off.png"></a>
</span>
    </div>
  </div>-->
  <div style="float:left;position:relative;top:-100px">
<div>Shop Categories</div>
<hr>
<a href="shop.asp?category=all#shophere">All</a><br><br>
<a href="shop.asp?category=fashion#shophere">Fashion</a><br><br>
<a href="shop.asp?category=kitchen#shophere">Kitchen</a><br><br>
<a href="shop.asp?category=software#shophere">Software</a><br><br>
<a href="shop.asp?category=computer#shophere">Computer</a><br><br>
<a href="shop.asp?category=misc#shophere">Miscellaneous</a><br><br>
<a href="shop.asp?category=motors#shophere">Motors</a><br><br>
<a href="shop.asp?category=electronics#shophere">Electronics</a><br><br>
<a href="shop.asp?category=collectibles#shophere">Collectibles & Art</a><br><br>
<a href="shop.asp?category=home#shophere">Home & Garden</a><br><br>
<a href="shop.asp?category=sporting#shophere">Sporting Goods</a><br><br>
<a href="shop.asp?category=toys#shophere">Toys</a><br><br>
<a href="shop.asp?category=business#shophere">Business & Industrial</a><br><br>
<a href="shop.asp?category=music#shophere">Music</a><br><br>
<a href="shop.asp?category=deals#shophere">Deals</a><br><br>
<a href="shop.asp?category=under10#shophere">Under $10</a>
</div>

    <%
    if category = "all" then
    %>
    <div style="position:relative;left:50px;top:-100px">
    <%
    else
    %>
    <div style="position:relative;left:50px;top:-100px">
    <%
    end if
    %>
    <div class="shoptitle" style="position:relative;left:-0px">
      <span style="font-size:26">Daily Deals</span>
    </div>
    <div>
    <%
    dim a, b

    a = request("a")

    b = request("b")

    a = 1
    b = 12

    dim ssql

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT duration, image, id, name,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY id DESC) AS 'RowNumber'"
    ssql = ssql & "    FROM sellproducts "
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    dim count
    count = 0

    dim didit
    didit = false

    while not oRS.eof

    if count mod 12 = 0 then
    %>
      <div style = "width:100%;">
      <%
    end if

    sqlstr = "SELECT * FROM mustpay WHERE itemid='" & oRS("id") & "'"

    set RS = oConnection.Execute(sqlstr)

    dim closed

    if RS.eof then
      closed = true

    %>
    <div style = "float:left; width: 180; height: 240">
        <a href='auction.asp?id=<%=oRS("id")%>'><img src='/productitems/<%=oRS("image")%>' width="130" height="130"></a>
        <br><a href='auction.asp?id=<%=oRS("id")%>'><%=oRS("name")%></a>
        <br>Opened for: <%=oRS("duration")%> days
    </div>
    <%
    else
    %>
    <div style = "float:left; width: 180; height: 240">
        <img src='/productitems/<%=oRS("image")%>' width="130" height="130">
        <br><%=oRS("name")%>
        <br><span style="color:red">Auction closed</span>
    </div>
    <%
    end if

    if count mod 12 = 11 then
    didit = true
    %>

      </div><br>
    <%
    end if
    %>
<%
  oRS.movenext
  count = count + 1
wend

if count mod 3 <> 2 then
    %>
    <div style = "float:left; width: 260; height: 300">
      <a href=buyproducts.asp><img src="/graphics/images/more.png"></a>
    </div>
      </div>
    <%
end if

%>

</div>

</div>

    <div class="shoptitle" style="width:100%;float:left;position:relative;top:-50px;left:100px;">
      <span style="font-size:26"><a href="newarrivals.asp">New Arrivals</a></span>
      <hr>
    </div>
    <h1>&nbsp;</h1>
<%
    a = 1

    b = 3

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT *,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY itemid DESC) AS 'RowNumber'"
    ssql = ssql & "    FROM products WHERE newarrivals = 1"
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 3 = 0 then
    %>
      <div style = "float:left;position:relative;top:0px;left:100px">
    <%
    end if
    %>
    <div style = "float:left; width: 260px; height: 250px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>' width="200" height="200"></a>
      </div>
      <div>
        <a style="" href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a>
      </div>
    </div>
    <%
    if count mod 3 = 2 then
    %>
      </div>
    <div style = "float:left; width: 260px; height: 250px; position:relative;left:100px">
      <div style = "width: 250px; height: 230px">
      <a href=newarrivals.asp><img src="/graphics/images/more.png"></a>
      </div>
    </div>

    <%
    end if
    %>
<%
  oRS.movenext
  count = count + 1
wend

if count mod 3 <> 2 then
    %>
      </div>
    <%
end if

%>

    <h1>&nbsp;</h1>
    <a name="shophere"></a>
    <div class="shoptitle" style="float:left;width:1200px;position:relative;top:50px;left:100px;">
      <a href='shopcategories.asp?category=<%=category%>'><span style="font-size:26">Shop <%=category%></span></a>
      <hr>
    </div>
    <%
    dim c, d

    c = request("c")

    d = request("d")

    if c = "" then
      c = 1
      d = 8
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT *,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY itemid DESC) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&c&" AND "&d&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 8 = 0 then
    %>
      <div style = "width:1200px;float:left;position:relative;top:50px;left:100px">
    <%
    if count = 0 then
    %>
      <div stylef = "width:1200px;float:left;position:relative;left:-100px">
      <div style = "float:left; width: 50px; height: 30px">
      <a href='shop.asp?c=<%=c-8%>&d=<%=d-8%>#shophere'>less...</a>
    </div>
    <%
    end if
    end if
    %>
    <div style = "float:left; width: 260px; height: 300px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>' width="200" height="200"></a>
      </div>
      <div>
        <a style="" href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a>
      </div>
    </div>
    <%
    if count = d - 1 then
%>
      <div style = "float:left; width: 50px; height: 30px">
      <a href='shop.asp?c=<%=c+8%>&d=<%=d+8%>#shophere'><img src="/graphics/images/more.png"></a>
      </div>
<%
    end if

    if count mod 8 = 7 then
    %>
      </div>
    <%
    end if
    %>
<%
  oRS.movenext
  count = count + 1
wend

if count mod 7 <> 6 then
    %>
      </div>
    <%
end if

oConnection.close()
%>

  </div>

  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  

  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  

  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  

    <!-- #include file="inc/footer.inc" -->
