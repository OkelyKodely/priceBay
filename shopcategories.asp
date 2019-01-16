  <!-- #include file="inc/header.inc" -->
  <div class="shop" style="float:left;position:relative;top:-70px">
  
    <div class="shoptitle">
      <span style="font-size:36">Shop</span>
    </div><br>

    <a href="shopcategories.asp?category=all">Shop All Categories</a>
    <br>

    <div style="width:1000px">
    <div style="width: 100%;height:270px;float:left">
      <div style="float: left;width:280px;height:220px">
        <a href="shopcategories.asp?category=fashion#shophere"><img src="/graphics/images/fashion-20-off.png" width="250" height="200"></a>
      </div>
      <div style="float: left;width:280px">
        <a href="shopcategories.asp?category=kitchen#shophere"><img src="/graphics/images/kitchen-upto-50-off.png" width="250" height="200"></a>
      </div>
      <div style="float: left;width:280px">
        <a href="shopcategories.asp?category=misc#shophere"><img src="/graphics/images/otheritems.png" width="250" height="200"></a>
      </div>
    </div>

    <div style="width: 100%;height:270px;float:left">
      <div style="float:left;width:280px;height:220px">
        <a href="shopcategories.asp?category=software#shophere"><img src="/graphics/images/software.png" width="250" height="200"></a>
      </div>
      <div style="float:left;width:280px;height:220px">
        <a href="shopcategories.asp?category=computer#shophere"><img src="/graphics/images/computers.png" width="250" height="200"></a>
      </div>
      <div style="float:left;width:280px;height:220px">
        <a href="shopcategories.asp?category=motors#shophere"><img src="/graphics/images/motors.png" width="250" height="200"></a>
      </div>
    </div>

    <div style="width: 100%;height:270px;float:left">
      <div style="float:left;width:280px;height:220px">
        <a href="shopcategories.asp?category=electronics#shophere"><img src="/graphics/images/electronics.png" width="250" height="200"></a>
      </div>
      <div style="float:left;width:280px;height:220px">
        <a href="shopcategories.asp?category=collectibles#shophere"><img src="/graphics/images/collectibles.png" width="250" height="200"></a>
      </div>
      <div style="float:left;width:280px;height:220px">
        <a href="shopcategories.asp?category=homeandgarden#shophere"><img src="/graphics/images/homeandgarden.png" width="250" height="200"></a>
      </div>
    </div>

    <div style="width: 100%;height:270px;float:left">
      <div style="float:left;width:280px;height:220px">
        <a href="shopcategories.asp?category=sporting#shophere"><img src="/graphics/images/sgoods.png" width="250" height="200"></a>
      </div>
      <div style="float:left;width:280px;height:220px">
        <a href="shopcategories.asp?category=toys#shophere"><img src="/graphics/images/toys.png" width="250" height="200"></a>
      </div>
      <div style="float:left;width:280px;height:220px">
        <a href="shopcategories.asp?category=business#shophere"><img src="/graphics/images/bindustrial.png" width="250" height="200"></a>
      </div>
    </div>

    <div style="width: 100%;height:270px;float:left">
      <div style="float:left;width:280px;height:220px">
        <a href="shopcategories.asp?category=music#shophere"><img src="/graphics/images/music.png" width="250" height="200"></a>
      </div>
      <div style="float:left;width:280px;height:220px">
        <a href="shopcategories.asp?category=deals#shophere"><img src="/graphics/images/deals.png" width="250" height="200"></a>
      </div>
      <div style="float:left;width:280px;height:220px">
        <a href="shopcategories.asp?category=under10#shophere"><img src="/graphics/images/under10.png" width="250" height="200"></a>
      </div>
    </div>
    </div>

    <div style="float:left; width:100%">
      <a name="shophere" />
      <br><br>
      <h1>Shop <%=category%></h1>
    </div>

    <%
    dim a, b

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1
      b = 8
    end if

    dim ssql

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
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    dim count
    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    if count = 0 then
    %>
      <div stylef = "width:800px;float:left;position:relative;left:-100px">
      <div style = "float:left; width: 50px; height: 300px">
      <a href='shopcategories.asp?a=<%=a-8%>&b=<%=b-8%>'>less...</a>
    </div>
    <%
    end if
    end if
    %>
    <div style = "float:left; width: 200px; height: 300px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>' width="150" height="150"></a>
      </div>
      <div>
        <a style="" href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a>
      </div>
      </p>
    </div>

    <%
    if count = b - 1 then
%>
      <div style = "float:left; width: 50px; height: 300px">
      <a href='shopcategories.asp?a=<%=a+8%>&b=<%=b+8%>'>more...</a>
      </div>
<%
    end if

    if count mod 4 = 3 then
    %>
      </div>
      <br>
    <%
    end if
    %>
<%
  oRS.movenext
  count = count + 1
wend

if count mod 4 <> 3 then
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
    <!-- #include file="inc/footer.inc" -->
