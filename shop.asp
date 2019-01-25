  <!-- #include file="inc/header.inc" -->
  <div class="shop1" style="width:100%;position:relative;top:30px">

  <div style="float:left;position:relative;top:-100px">
<div><b>Your Categories</b> <img src="/graphics/images/downs.png"></div>
<hr>
<a href="shop.asp?category=all"><img src="/graphics/images/cat.png"> <b>All</b></a><br>
<a href="shop.asp?category=fashion"><img src="/graphics/images/cat.png"> <b>Fashion</b></a><br>
<a href="shop.asp?category=kitchen"><img src="/graphics/images/cat.png"> <b>Kitchen</b></a><br>
<a href="shop.asp?category=software"><img src="/graphics/images/cat.png"> <b>Software</b></a><br>
<a href="shop.asp?category=computer"><img src="/graphics/images/cat.png"> <b>Computer</b></a><br>
<a href="shop.asp?category=misc"><img src="/graphics/images/cat.png"> <b>Miscellaneous</b></a><br>
<a href="shop.asp?category=motors"><img src="/graphics/images/cat.png"> <b>Motors</b></a><br>
<a href="shop.asp?category=electronics"><img src="/graphics/images/cat.png"> <b>Electronics</b></a><br>
<a href="shop.asp?category=collectibles"><img src="/graphics/images/cat.png"> <b>Collectibles & Art</b></a><br>
<a href="shop.asp?category=home"><img src="/graphics/images/cat.png"> <b>Home & Garden</b></a><br>
<a href="shop.asp?category=sporting"><img src="/graphics/images/cat.png"> <b>Sporting Goods</b></a><br>
<a href="shop.asp?category=toys"><img src="/graphics/images/cat.png"> <b>Toys</b></a><br>
<a href="shop.asp?category=business"><img src="/graphics/images/cat.png"> <b>Business & Industrial</b></a><br>
<a href="shop.asp?category=music"><img src="/graphics/images/cat.png"> <b>Music</b></a><br>
<a href="shop.asp?category=deals"><img src="/graphics/images/cat.png"> <b>Deals</b></a><br>
<a href="shop.asp?category=under10"><img src="/graphics/images/cat.png"> <b>Under $10</b></a><br>
<a href="shop.asp?category=beauty"><img src="/graphics/images/cat.png"> <b>Beauty</b></a><br>
<a href="shop.asp?category=personal"><img src="/graphics/images/cat.png"> <b>Personal Care</b></a><br>
<a href="shop.asp?category=jewelry"><img src="/graphics/images/cat.png"> <b>Jewelry</b></a><br>
<a href="shop.asp?category=handmade"><img src="/graphics/images/cat.png"> <b>Handmade</b></a><br>
<a href="shop.asp?category=travel"><img src="/graphics/images/cat.png"> <b>Travel</b></a><br>
<a href="shop.asp?category=office"><img src="/graphics/images/cat.png"> <b>Office Products</b></a><br>
<a href="shop.asp?category=pet"><img src="/graphics/images/cat.png"> <b>Pet Supplies</b></a><br>
<a href="shop.asp?category=appliances"><img src="/graphics/images/cat.png"> <b>Appliances</b></a>
</div>

    <%
    if category = "all" then
    %>
    <div style="position:relative;left:50px;top:0px">
    <%
    else
    %>
    <div style="position:relative;left:50px;top:0px">
    <%
    end if
    %>

<div style="position:relative;top:-100px">
      <%
      dim categoryName

      if category = "fashion" then
        categoryName = "Fashion"
%>
      <img src="/graphics/images/fashion-banner.png">
<%
      elseif category = "kitchen" then
        categoryName = "Kitchen"
%>
      <img src="/graphics/images/kitchen-banner.png">
<%
      elseif category = "software" then
        categoryName = "Software"
%>
      <img src="/graphics/images/software-banner.png">
<%
      elseif category = "computer" then
        categoryName = "Computer"
%>
      <img src="/graphics/images/computer-banner.png">
<%
      elseif category = "misc" then
        categoryName = "Miscellaneous"
%>
      <img src="/graphics/images/misc-banner.png">
<%
      elseif category = "motors" then
        categoryName = "Motors"
%>
      <img src="/graphics/images/motors-banner.png">
<%
      elseif category = "electronics" then
        categoryName = "Electronics"
%>
      <img src="/graphics/images/electronics-banner.png">
<%
      elseif category = "collectibles" then
        categoryName = "Collectibles & Art"
%>
      <img src="/graphics/images/collectibles-banner.png">
<%
      elseif category = "home" then
        categoryName = "Home & Garden"
%>
      <img src="/graphics/images/home-banner.png">
<%
      elseif category = "sporting" then
        categoryName = "Sporting Goods"
%>
      <img src="/graphics/images/sporting-banner.png">
<%
      elseif category = "toys" then
        categoryName = "Toys"
%>
      <img src="/graphics/images/toys-banner.png">
<%
      elseif category = "business" then
        categoryName = "Business & Industrial"
%>
      <img src="/graphics/images/business-banner.png">
<%
      elseif category = "music" then
        categoryName = "Music"
%>
      <img src="/graphics/images/music-banner.png">
<%
      elseif category = "deals" then
        categoryName = "Deals"
%>
      <img src="/graphics/images/deals-banner.png">
<%
      elseif category = "under10" then
        categoryName = "Under 10"
%>
      <img src="/graphics/images/under-10-banner.png">
<%
      elseif category = "beauty" then
        categoryName = "Beauty"
%>
      <img src="/graphics/images/beauty-banner.png">
<%
      elseif category = "personal" then
        categoryName = "Personal Care"
%>
      <img src="/graphics/images/personalcare-banner.png">
<%
      elseif category = "jewelry" then
        categoryName = "Jewelry"
%>
      <img src="/graphics/images/jewelry-banner.png">
<%
      elseif category = "handmade" then
        categoryName = "Handmade"
%>
      <img src="/graphics/images/handmade-banner.png">
<%
      elseif category = "travel" then
        categoryName = "Travel"

      elseif category = "office" then
        categoryName = "Office Products"

      elseif category = "pet" then
        categoryName = "Pet Supplies"

      elseif category = "appliances" then
        categoryName = "Appliances"

      elseif category = "all" then
        categoryName = "All"

      end if
      %>
    </div>
<h1>&nbsp;</h1>
<%
    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 14
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
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

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div style = "loat:left;position:relative;top:-140px;left:0px">
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px;">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'>Original: $<%=oRS("price")%> USD<img src="/graphics/images/cat.png"><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 13 then
    %>
    <div style = "float:left; width: 360px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
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
    <h1>&nbsp;</h1>
        <h1>&nbsp;</h1>
            <a name="shopheref"></a>
    <div class="shoptitle" style="float:left;width:100%;position:relative;top:110px;left:0px;">
      <a href="newarrivals.asp"><span style="font-size:26">New Arrivals</span></a>
      <hr style="color:#eee">
      <img src="/graphics/images/new-arrivals-banner.png">
    <h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
    </div>
    <%
    dim c, d

    c = request("c")

    d = request("d")

    c = 1

    d = 7

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, name, itemid, price, discount,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    ssql = ssql & "    FROM products WHERE newarrivals = 1"
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&c&" AND "&d&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 8 = 0 then
    %>
      <div style = "width:1200px;float:left;position:relative;top:70px;left:0px">
    <%
    if count = 0 and c <> 1 then
    %>
      <div stylef = "width:1200px;float:left;position:relative;left:-100px">
      <div style = "float:left; width: 150px; height: 50px">
      <a href='shop.asp?c=<%=c-8%>&d=<%=d-8%>'>less...</a>
    </div>
    <%
    end if
    end if
    %>
    <div style = "float:left; width: 300px; height: 400px">
      <div>
        <a style="" href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a style="color:red" href='item.asp?itemid=<%=oRS("itemid")%>'>$<%=oRS("price")%> USD</a>
      </div>
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>' width="200" height="230"></a>
      </div>
    </div>
    <%
    if count = d - 1 then
%>
      <div style = "float:left; width: 150px; height: 100px">
      <a href='newarrivals.asp'><img src="/graphics/images/more.png"></a>
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
%>
    <h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
        <h1>&nbsp;</h1>
            <a name="shophereg"></a>
    <div class="shoptitle" style="float:left;width:100%;position:relative;top:200px;left:0px;">
      <a href="bestsellers.asp"><span style="font-size:26">Best Sellers</span></a>
      <hr style="color:#eee">
      <img src="/graphics/images/best-sellers-banner.png">
    <h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
    </div>
    <%

    c = request("c")

    d = request("d")

    c = 1

    d = 8

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, name, itemid, price, discount,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    ssql = ssql & "    FROM products WHERE bestseller = 1"
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&c&" AND "&d&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 8 = 0 then
    %>
      <div style = "width:1200px;float:left;position:relative;top:170px;left:0px">
    <%
    if count = 0 and c <> 1 then
    %>
      <div stylef = "width:1200px;float:left;position:relative;left:-100px">
      <div style = "float:left; width: 150px; height: 50px">
      <a href='shop.asp?c=<%=c-8%>&d=<%=d-8%>'>less...</a>
    </div>
    <%
    end if
    end if
    %>
    <div style = "float:left; width: 300px; height: 400px">
      <div>
        <a style="" href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a style="color:red" href='item.asp?itemid=<%=oRS("itemid")%>'>$<%=oRS("price")%> USD</a>
      </div>
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>' width="200" height="230"></a>
      </div>
    </div>
    <%
    if count = d - 1 then
%>
      <div style = "float:left; width: 150px; height: 100px">
      <a href='newarrivals.asp'><img src="/graphics/images/more.png"></a>
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
