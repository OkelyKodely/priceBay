  <!-- #include file="inc/header.inc" -->
  <%
  dim category

  category = request.querystring("category")

  if category = "" then
    category = "all"
  end if
  %>
  <div class="shop">
  
    <div class="shoptitle">
  	  <span style="font-size:23">Please Enter Your Credit Card & Shipping</span><br><br>
    </div>
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

    dim t

    t = request("t")
    
    dim sqlstr

    %>
  <div id = "container" style = "width:100%">
      <div id = "middle" style = "float:left; width: 200;">
        Payment Cost: $<%=t%><br>
        Shipping: $20<br>
        <hr>
        <b>Total: $<%=t+20%></b><br><br><br><br><br><br><br><br><br>
        <img src="/graphics/images/shipping.png">
      </div>
      <div id = "right" style = "float:left; width: 400;">
        <img src="/graphics/images/cards.png" width="100"><br><br>
        <form method="POST" action="https://test.authorize.net/gateway/transact.dll"> 
          <input type=hidden id="x_login" name="x_login" value='6r46jMVd4X'/>
          <input type=hidden id="x_tran_key" name="x_tran_key" value='5fRKD8z8454KygQK'/>
          Your Card Type: 
          <select name="cc">
            <option value="visa">VISA</option>
            <option value="mc">MASTER CARD</option>
            <option value="dsc">DISCOVER</option>
            <option value="amx">AMEX</option>
          </select><br><br>
          Your Credit Card Number: <input type=text id="x_card_num" name="x_card_num"/><br><br>
          Your Exp Date: <input type=text id="x_exp_date" name="x_exp_date"/><br><br>
          Your Security Code: <input type=text id="x_card_code" name="x_card_code"/><br><br>
          <h3>Shipping</h3>
          Your Address: <input type=text name="x_custom_3"/><br><br>
          Your City: <input type=text name="x_custom_4"/><br><br>
          Your State: <input type=text name="x_custom_5"/><br><br>
          Your Zip Code: <input type=text name="x_custom_6"/><br><br>
          Your Country: <input type=text name="x_custom_7"/><br><br><br>
          <input type="submit" value="Proceed" style="width: 150px; height:50px" />
          <input type=hidden id="x_amount" name="x_amount" value=<%=t+20%>/>
          <input type=hidden id="x_relay_url" name="x_relay_url" value='http://104.175.56.210/relayresponse.asp'/>
          <input type=hidden id="x_relay_response" name="x_relay_response" value='Y'/>
          <input type=hidden id="x_type" name="x_type" value='AUTH_CAPTURE'/>
          <input type=hidden id="x_currency_code" name="x_currency_code" value='USD'/>
          <input type=hidden name="x_custom_1" value=<%=session("username")%> />
          <input type=hidden name="x_custom_2" value=<%=cartid%> />
        </form>
      </div>
  </div>
  <%
  %>

  </div>
  
  <div style="position:relative;left:200px;top:100px">
    <!-- #include file="inc/footer.inc" -->
  </div>