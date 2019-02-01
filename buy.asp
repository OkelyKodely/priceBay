  <!-- #include file="inc/header.inc" -->
  <%
  %>
  <h1>&nbsp;</h1>
  <h1 style="position:relative;left:100px;top:-120px">Make Payment For Your Cart Items</h1>

  <a href="cart.asp" style="color:gray"><h3 style="position:relative;left:100px;top:-70px;">View Your Cart</h3></a>

  <div class="shop">
  
    <div class="shoptitle">
  	  <span style="font-size:23">Please Enter Your Credit Card & Shipping Information</span><br><br>
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

    dim oRS

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
          <h3>Billing</h3>
          Your Address: <input type=text id="address" name="address"/><br><br>
          Your City: <input type=text id="city" name="city"/><br><br>
          Your State: <input type=text id="state" name="state"/><br><br>
          Your Zip Code: <input type=text id="zipcode" name="zipcode"/><br><br>
          Your Country: <input type=text id="country" name="country"/><br><br><br>
          <input type=hidden id="x_login" name="x_login" value='6r46jMVd4X'/>
          <input type=hidden id="x_tran_key" name="x_tran_key" value='84XDv9Xq2E7ay6s7'/>
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
          Same as Billing <input type="checkbox" id="same" onclick="sameAsBilling()"><br><br>
          <script>
            function sameAsBilling() {
              var x = document.getElementById("same");
              if(x.checked) {
                var y = document.getElementById("x_custom_3");
                x = document.getElementById("address");
                y.value = x.value;
                y = document.getElementById("x_custom_4");
                x = document.getElementById("city");
                y.value = x.value;
                y = document.getElementById("x_custom_5");
                x = document.getElementById("state");
                y.value = x.value;
                y = document.getElementById("x_custom_6");
                x = document.getElementById("zipcode");
                y.value = x.value;
                y = document.getElementById("x_custom_7");
                x = document.getElementById("country");
                y.value = x.value;
              } else {
                var y = document.getElementById("x_custom_3");
                y.value = "";
                y = document.getElementById("x_custom_4");
                y.value = "";
                y = document.getElementById("x_custom_5");
                y.value = "";
                y = document.getElementById("x_custom_6");
                y.value = "";
                y = document.getElementById("x_custom_7");
                y.value = "";
              }
            }
          </script>
          Your Address: <input type=text id="x_custom_3" name="x_custom_3"/><br><br>
          Your City: <input type=text id="x_custom_4" name="x_custom_4"/><br><br>
          Your State: <input type=text id="x_custom_5" name="x_custom_5"/><br><br>
          Your Zip Code: <input type=text id="x_custom_6" name="x_custom_6"/><br><br>
          Your Country: <input type=text id="x_custom_7" name="x_custom_7"/><br><br><br>
          <input type="submit" value="Proceed to Pay" style="width: 150px; height:50px" />
          <input type=hidden id="x_amount" name="x_amount" value='<%=t+20%>' />
          <input type=hidden id="x_relay_url" name="x_relay_url" value='http://pricebay.gq/relayresponse.asp'/>
          <input type=hidden id="x_relay_response" name="x_relay_response" value='Y'/>
          <input type=hidden id="x_type" name="x_type" value='AUTH_CAPTURE'/>
          <input type=hidden id="x_currency_code" name="x_currency_code" value='USD'/>
          <input type=hidden name="x_custom_1" value='<%=session("username")%>' />
          <input type=hidden name="x_custom_2" value='<%=cartid%>' />
        </form>
      </div>
  </div>
  <%
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

  <%
oConnection.close()
  %>
    <!-- #include file="inc/footer.inc" -->
