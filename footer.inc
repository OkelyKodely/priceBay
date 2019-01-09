  <div class="footer" style="border:1px solid gray;position:relative;top:150px;left:-200px;width:1650px;height:240px;">
  <div style="position:absolute;left:300px;">
    <br><br><br>
    <a href="/termsOfService.asp">Terms Of Service</a> | 
  	<a href="/shop.asp">Shop With Us</a> | 
  	<a href="/categories.asp">See Categories</a> |
  	<a href="/about.asp">About priceBay</a> |
  	<a href="/buyProducts.asp">Buy</a> |
  	<a href="/sell.asp">Sell</a>
    <%if session("username") <> "" then%>
    | <a href="/orders.asp">Your Orders</a>
    <%else%>
    | <a href="/signUp.asp">Sign Up</a>
    | <a href="/logIn.asp">Sign In</a>
    <%end if%>
    | <a href="/contact.asp">Contact</a>
  	<br><br>
  	Copyright &copy; 2019 <a href="/shop.asp">priceBay Inc.</a> All Rights Reserved
  </div>
  </div>
</body>
</html>