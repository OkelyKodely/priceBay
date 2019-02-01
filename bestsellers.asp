  <!-- #include file="inc/header.inc" -->
  <div class="shop" style="float:left">
  
<div style="position:relative;top:-100px;left:-100px;top:-110px">
      <img src="/graphics/images/best-sellers-banner.png" width="1400" height="250"><br><br>
  </div>

    <div class="shoptitle" style="position:relative;top:-100px">
      <span style="font-size:36">Best Seller items</span><br><br>
      <a href="shopcategories.asp"><img src="/graphics/images/shopformoreitems.png"></a>
      </div>

    <%
    dim a, b

    a = request.querystring("a")

    b = request.querystring("b")

    if a = "" then

      a = 1

      b = 4

    end if

    dim ssql
    
    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT itemid, image, name, price, "
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY itemid DESC) AS 'RowNumber'"
    ssql = ssql & "    FROM products WHERE bestseller = 1"
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    dim count
    count = 0

%>
      <div style = "width:100%;float:left">
        <%
        if a <> 1 then
        %>
      <div style = "float:left; width: 50px; height: 30px">
      <a href='bestsellers.asp?a=<%=a-4%>&b=<%=b-4%>'>less...</a>
    </div>
    <%
    end if
    %>
<%
    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div style = "width:1200px;float:left;position:relative;left:0px">
    <%
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
    if count mod 4 = 3 then
    %>
      </div><br>
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

      <div style = "float:left; width: 250px; height: 300px">
      <a href='bestsellers.asp?a=<%=a+4%>&b=<%=b+4%>'><img src="/graphics/images/more.png"></a>
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
