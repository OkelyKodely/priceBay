  <!-- #include file="inc/header.inc" -->
  <div class="shop">
  
    <div style="width:100%; float:left">

    <div style="width:500px; float:left">
      <a href="shopcategories.asp"><img src="/graphics/images/shopformoreitems.png"></a>
    </div>

    <div style="width:500px; float:left">
      <a href="https://www.ups.com"><img src="/graphics/images/upstransit.png"></a>
    </div>
      
    </div>

    <h1>&nbsp;</h1>

    <div class="shoptitle">
  	  <span style="font-size:26">View Cart</span>
    </div>

    <%
    dim itemid

    itemid = request.form("itemid")

    dim sqlstr

    dim cartid

    dim clearcart

    cartid = session("cartid")

    clearcart = request.querystring("do")

    if clearcart = "clear" then

      sqlstr = "DELETE FROM cart WHERE cid = " & cartid

      oConnection.Execute(sqlstr)

    end if

    if itemid <> "" then

      if isnull(cartid) then

        sqlstr = "SELECT cid AS id FROM cart order by cid desc"

        set rs = oConnection.Execute(sqlstr)

        if not rs.eof then
          cartid = rs("id")
        'response.write "1wer" &cartid
        else
          cartid = "1"
        'response.write "wer" & cartid
        end if

        session("cartid") = cartid

        'response.write "asdf " & cartid
        
      end if

      sqlstr = "INSERT INTO cart (cid,itemid) VALUES ("&cartid&","&itemid&")"

      'response.write sqlstr
   
     oConnection.Execute(sqlstr)
 
   end if

   sqlstr = "SELECT * FROM cart WHERE cid=" & cartid

   if cartid = "" then
    set oRS = nothing
   else   
    set oRS = oConnection.Execute(sqlstr)

   end if

   dim total

   if cartid <> "" then
   %>
    <div>
    <div style = "width:100%;float:left">

    <div style="float:left;width:280px">item id</div>
    <div style="float:left;width:280px">category</div>
    <div style="float:left;width:280px">image</div>
    <div style="float:left;width:280px">price</div>

    </div>

    <div style = "width:100%;float:left">
      <hr style="color:#f0f0f0;width:1440px;position:relative;left:0px">
    </div>
    <%

    while not oRS.eof
      dim iid
      iid = oRS("itemid")

      sqlstr = "SELECT * FROM products WHERE itemid = " & iid

      set r_s = oConnection.Execute(sqlstr)

      while not r_s.eof
        %>
      <div style = "width:100%;float:left">

      <div style="float:left;width:280px"><a href='item.asp?itemid=<%=iid%>'><%=r_s("name")%></a></div>
      <div style="float:left;width:280px"><%=r_s("category")%></div>
      <div style="float:left;width:280px"><img height=50 src=/productitems/<%=r_s("image")%>></div>
      <div style="float:left;width:280px">$<%response.write formatnumber((100-cdbl(r_s("discount")))*cdbl(r_s("price"))/100,2)%></div>

      </div><br>
        <%
        total = total + (100-cdbl(r_s("discount")))*cdbl(r_s("price"))/100
        r_s.movenext
      wend

      oRS.movenext
    wend
 
  %>
    <div style = "width:100%;float:left">
      <hr style="color:#f0f0f0;width:1440px;position:relative;left:0px">
    </div>

  </div>
  <%
  end if

  if total > 0 then
  %>
<h4>Subtotal: $<%=formatnumber(total,2)%></h4>
<h4>UPS Ground Shipping Cost: $20.00&nbsp;<div id="mid" style="display:none;"></div></h4>
<h4>Total: $<%=formatnumber(total+20,2)%></h4>
<a href="cart.asp?do=clear" style="color:#ff0000"><button>Clear cart</button></a>
<br><br>
<script>
  var x = document.getElementById("mid");
  x.innerHTML = '<img src="/graphics/images/shipping.png"><font size=-2>$20 flat fee fore shipping using UPS Ground Shipping method.  Shipping takes usually 1 ~ 6 business days.</font>';
  x.style.display = "block";
</script>
<%
end if
%>
<p>&nbsp;</p>

  <form method="post" action="buy.asp">
    <input type="hidden" name="t" value=<%=total%>>
    <%
    if total > 0 then
    %>
    <input type="submit" value="Checkout" style="width:260px; height:70px">
    <%
    else
    %>
    <input type="submit" value="Checkout" style="width:260px; height:70px" disabled>
    <%
    end if
    %>
  </form>

</div>
<%
oConnection.close()
%>
  <!-- #include file="inc/footer.inc" -->
