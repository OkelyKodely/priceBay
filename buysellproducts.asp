  <!-- #include file="inc/header.inc" -->
  <%
  dim category

  category = request.querystring("category")

  if category = "" then
    category = "all"
  end if
  %>
  <h1>&nbsp;</h1>
  <h1 style="position:relative;left:100px">Pay for Auction Won item</h1>
  <div class="shop" style="height:500px;position:relative;left:100px">
  
    <%
    dim cartid

    cartid = session("cartid")

    if isnull(cartid) then
      response.write "error"
    end if

    dim username

    username = session("username")

    if username = "" then
      response.redirect "/login.asp"
    end if

    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"

    dim id

    id = request("id")
    
    dim sqlstr

    sqlstr = "select * from sellproducts where id = " & id

    set rs = oConnection.Execute(sqlstr)

    dim price

    dim image

    dim email

    dim name

    dim description

    if not rs.eof then

      username = rs("username")

      name = rs("name")

      description = rs("description")

      image = rs("image")

      price = rs("price")

      sqlstr = "select * from shoppers where username = '"&username&"'"

      set r = oConnection.Execute(sqlstr)

      if not r.eof then

        email = r("paypal_user")

      sqlstr = "select * from shoppers where username = '"&session("username")&"'"

      set rr = oConnection.Execute(sqlstr)

      dim em

      if not rr.eof then
        em = rr("email")
    %>
  <div id = "container" style = "width:100%; position:relative;top:-20px">
      <div id = "middle" style = "float:left; width: 200;">
        Payment Cost: $<%=price%><br>
        <hr>
        <b>Total: $<%=price%></b><br><br><br><br><br><br><br><br><br>
        titl: <%=rs("name")%><br>
        <img src='/productitems/<%=rs("image")%>' width="200" height="200"><br>
        descript: <%=description%><br><br>
        <img src="/graphics/images/shipping.png"><br>
        UPS Ground (fast delivery)
      </div>
  </div>
  <%  end if
    end if
  end if
  %>

  </div>

      <div id = "right" style = "float:left; width: 200; position:relative; left:-100px; top:-370px">
        <a href='https://www.paypal.com/cgi-bin/webscr?email=<%=em%>&business=<%=email%>&cmd=_xclick&currency_code=USD&amount=<%=price%>&item_name=priceBay_auction_<%=name%>'>
          <img src="/graphics/images/ppbtn.png" width="200">
        </a>
    </div>

  
    <!-- #include file="inc/footer.inc" -->
