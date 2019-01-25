    <div class="footer" style="color:gray;background-color:#ddd;border:0px solid gray;position:relative;top:150px;left:-200px;width:1650px;height:480px;">
      <div style="position:absolute;left:300px;">
        <br><br><br>
        <a href="/termsOfService.asp" style="color:gray;">Terms Of Service</a> | 
  	    <a href="/categories.asp" style="color:gray;">Shop</a> |
  	    <a href="/about.asp" style="color:gray;">About</a> |
  	    <a href="/buyProducts.asp" style="color:gray;">Buy</a> |
  	    <a href="/sell.asp" style="color:gray;">Sell</a>
        | <a href="/cart.asp" style="color:gray;">Cart</a>
        | <a href="/contact.asp" style="color:gray;">Contact</a>
        <%if session("username") <> "" then%>
          | <a href="/orders.asp" style="color:gray;">Your Orders</a>
        <%else%>
          | <a href="/signUp.asp" style="color:gray;">Sign Up</a>
          | <a href="/logIn.asp" style="color:gray;">Sign In</a>
        <%end if%>
  	    <br><br>
        <form method="post" action="subscribe.asp">
          Email <input type="text" name="email">
          <input type="submit" value="Subscribe">
        </form>
        <img src="/graphics/images/ssl.png">
        <img src="/graphics/images/ppez2.png">
        <img src="/graphics/images/auth.png">
        <br><br>
        <div>
  	      Copyright &copy; 2019 <a href="/shop.asp" style="color:gray;">priceBay Inc.</a> All Rights Reserved
        </div>
      </div>
    </div>
  </body>
</html>