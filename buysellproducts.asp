  <!-- #include file="inc/header.inc" -->
  <h1>&nbsp;</h1>
  <h2 style="position:relative;left:100px;top:-150px">Make Payment For Auction Won Item</h2>
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

    dim oRS

    dim id

    id = request("id")
    
    dim sqlstr

    sqlstr = "select username, name, description, image, price, shippingpolicy from sellproducts where id = " & id

    set rs = oConnection.Execute(sqlstr)

    dim price

    dim image

    dim email

    dim name

    dim description

    dim sp

    if not rs.eof then

      username = rs("username")

      name = rs("name")

      description = rs("description")

      image = rs("image")

      price = rs("price")

      sp = rs("shippingpolicy")

      sqlstr = "select * from shoppers where username = '"&username&"'"

      set r = oConnection.Execute(sqlstr)

      if not r.eof then

        email = r("paypal_user")

      sqlstr = "select * from shoppers where username = '"&session("username")&"'"

      set rr = oConnection.Execute(sqlstr)

      dim em

      if not rr.eof then
        em = rr("email")
        session("price") = price
        session("itemid") = id
    %>
        <div style="float:left ; width:500px; float:left">
      <a href="buyproducts.asp"><im src="/graphics/images/shopformoreitems.png"></a>
    </div>

  <div id = "container" style = "width:100%; position:relative;top:-200px">
      <div id = "middle" style = "float:left; width: 200;">
        Seller: <%=username%><br>
        Your Bid: $<%=price%><br>
        <hr>
        <h3><b>Total: $<%=price%></b></h3><br><br><br><br><br><br><br><br><br>
        Title: <%=rs("name")%><br>
        <img src='/productitems/<%=rs("image")%>' width="200" height="200"><br>
        Description: <%=description%><br><br>
        Shipping Policy: <%=sp%><br><br>
        
      </div>
  </div>
  <%  end if
    end if
  end if
  %>

  </div>

<form action="https://www.paypal.com/cgi-bin/webscr" method="post" style="float:left ; position:relative; left:-110px; top:-500px">
<input type="hidden" name="cmd" value="_xclick">
<input type="hidden" name="business" value='<%=email%>'>
<input type="hidden" name="email" value='<%=em%>'>
<input type="hidden" name="lc" value="US">
<input type="hidden" name="item_name" value='priceBay_auction_<%=name%>'>
<input type="hidden" name="item_number" value='priceBay_auction_<%=id%>'>
<input type="hidden" name="amount" value='<%=price%>'>
<input type="hidden" name="currency_code" value="USD">
<input type="hidden" name="button_subtype" value="services">
<input type="hidden" name="no_note" value="0">
<input type="hidden" name="cn" value="Add special instructions to the seller:">
<input type="hidden" name="no_shipping" value="2">
<input type="hidden" name="rm" value="1">
<input type="hidden" name="return" value="http://pricebay.gq/paypal.asp">
<input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHosted">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>

<%
oConnection.close()
%>

    <!-- #include file="inc/footer.inc" -->
