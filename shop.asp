  <!-- #include file="inc/header.inc" -->
  <%
  dim category

  category = request.querystring("category")

  if category = "" then
    category = "all"
  end if
  %>
  <div class="shop1" style="width:100%">
  
    <div class="shoptitle" style="height:260px;position:relative;top:0px">
      <span style="font-size:26;"><img src="/graphics/images/20off.png" height="200"></span>
    </div>

  <div style="float:left">
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

    <div class="categoryitems" style="float:left">
      <%
      if category = "all" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all" selected>Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "fashion" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion" selected>Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "kitchen" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen" selected>Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "software" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software" selected>Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "computer" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software" selected>Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "misc" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc" selected>Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "motors" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors" selected>Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "electronics" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics" selected>Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "collectibles" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles" selected>Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "home" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home" selected>Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "sporting" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting" selected>Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "toys" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys" selected>Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "business" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business" selected>Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "music" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music" selected>Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "deals" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals" selected>Deals</a><br><br>
        <option value="under10">Under $10</a>
      </select>
      <%
      elseif category = "under10" then
      %>
      Shop Categories: <select name="category" id="category" onchange="window.location.href='?category='+this.value+'#shophere'" style="height:20px;font-size:14px">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
        <option value="motors">Motors</a><br><br>
        <option value="electronics">Electronics</a><br><br>
        <option value="collectibles">Collectibles & Art</a><br><br>
        <option value="home">Home & Garden</a><br><br>
        <option value="sporting">Sporting Goods</a><br><br>
        <option value="toys">Toys</a><br><br>
        <option value="business">Business & Industrial</a><br><br>
        <option value="music">Music</a><br><br>
        <option value="deals">Deals</a><br><br>
        <option value="under10" selected>Under $10</a>
      </select>
      <%
      end if
      %>
    </div>

    <%
    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"

    if category = "all" then
    %>
    <div style="position:relative;left:50px">
    <%
    else
    %>
    <div style="position:relative;left:50px">
    <%
    end if
    %>
    <div class="shoptitle" style="position:relative;left:-300px">
      <span style="font-size:26">New Auctions</span>
    </div>
    <div>
    <%
    dim a, b

    a = request("a")

    b = request("b")

    a = 1
    b = 6

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

    if count mod 3 = 0 then
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
    <div style = "float:left; width: 250; height: 300">
        <a href='auction.asp?id=<%=oRS("id")%>'><img src='/productitems/<%=oRS("image")%>' width="150" height="150"></a>
        <br><a href='auction.asp?id=<%=oRS("id")%>'><%=oRS("name")%></a>
        <br>Opened for: <%=oRS("duration")%> days
    </div>
    <%
    else
    %>
    <div style = "float:left; width: 250; height: 300">
        <img src='/productitems/<%=oRS("image")%>' width="150" height="150">
        <br><%=oRS("name")%>
        <br><span style="color:red">Auction closed</span>
    </div>
    <%
    end if

    if count mod 3 = 2 then
    didit = true
    %>
      <a href=buyproducts.asp>more...</a>

      </div><br>
    <%
    end if
    %>
<%
  oRS.movenext
  count = count + 1
wend

if count mod 3 <> 2 and not didit then
    %>
      <a href=buyproducts.asp>more...</a>

      </div>
    <%
end if

%>

</div>

</div>

    <div class="shoptitle" style="width:100%;float:left;position:relative;top:60px;lef:100px;">
      <span style="font-size:26"><a href="newarrivals.asp">New Arrivals</a></span>
      <hr>
    </div>
    <h1>&nbsp;</h1>
<%
    set oRS = oConnection.Execute("SELECT * FROM products WHERE newarrivals=1 ORDER BY itemid DESC")

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div style = "float:left;position:relative;top:60px;lef:100px">
    <%
    end if
    %>
    <div style = "float:left; width: 200px; height: 200px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>' width="150" height="100"></a>
      </div>
      <div>
        <a style="" href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
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

%>

    <h1>&nbsp;</h1>
    <a name="shophere"></a>
    <div class="shoptitle" style="float:left;width:1200px;position:relative;top:140px;left:100px;">
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
      <div style = "width:900px;float:left;position:relative;top:140px;left:100px">
    <%
    if count = 0 then
    %>
      <div stylef = "width:800px;float:left;position:relative;left:-100px">
      <div style = "float:left; width: 50px; height: 300px">
      <a href='shop.asp?c=<%=c-8%>&d=<%=d-8%>#shophere'>less...</a>
    </div>
    <%
    end if
    end if
    %>
    <div style = "float:left; width: 200px; height: 200px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>' width="150" height="100"></a>
      </div>
      <div>
        <a style="" href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a>
      </div>
    </div>
    <%
    if count = d - 1 then
%>
      <div style = "float:left; width: 50px; height: 300px">
      <a href='shop.asp?c=<%=c+8%>&d=<%=d+8%>#shophere'>more...</a>
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
    <!-- #include file="inc/footer.inc" -->
