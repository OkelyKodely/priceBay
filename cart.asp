  <!-- #include file="inc/header.inc" -->
  <%
  dim category

  category = request.querystring("category")

  if category = "" then
    category = "all"
  end if
  %>
  <div class="shop">
  
    <div style="width:100%; float:left">

    <div style="width:500px; float:left">
      <a href="shop.asp"><img src="/graphics/images/shopformoreitems.png"></a>
    </div>

    <div style="width:500px; float:left">
      <a href="https://www.ups.com"><img src="/graphics/images/upstransit.png"></a>
    </div>
      
    </div>

    <h1>&nbsp;</h1>

    <div class="shoptitle">
  	  <span style="font-size:26">Your Cart</span>
    </div>

    <h1>&nbsp;</h1>

    <%
    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"

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

    <div style="float:left;width:180px">item id</div>
    <div style="float:left;width:180px">image</div>
    <div style="float:left;width:180px">price</div>

    </div>

    <div style = "width:100%;float:left">
      <hr style="color:#f0f0f0;width:400px;position:relative;left:-420px">
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

      <div style="float:left;width:180px">> <a href='item.asp?itemid=<%=iid%>'><%=r_s("name")%></a></div>
      <div style="float:left;width:180px"><img height=50 src=/productitems/<%=r_s("image")%>></div>
      <div style="float:left;width:120px">$<%=(100-cdbl(r_s("discount")))*cdbl(r_s("price"))/100%></div>

      </div><br>
        <%
        total = total + (100-cdbl(r_s("discount")))*cdbl(r_s("price"))/100
        r_s.movenext
      wend

      oRS.movenext
    wend
 
  %>
    <div style = "width:100%;float:left">
      <hr style="color:#f0f0f0;width:400px;position:relative;left:-420px">
    </div>

  </div>
  <%
  end if

  if total > 0 then
  %>
<h4>Subtotal: $<%=total%></h4>
<h4>UPS Ground Shipping Cost: $20.00&nbsp;<a onclick="upd()"><span style="color:blue">What shipping?</span></a><div id="mid" style="display:none;"></div></h4>
<h4>Total: $<%=total+20%></h4>
<a href="cart.asp?do=clear" style="color:#ff0000"><button>Clear cart</button></a>
<br><br>
<script>
  function upd() {
    var x = document.getElementById("mid");
    if(x.style.display == 'none') {
      x.innerHTML = '<img src="/graphics/images/shipping.png">$20 flat fee fore shipping using UPS Ground Shipping method.  Shipping takes usually 1 ~ 6 business days.';
      x.style.display = "block";
    } else if (x.style.display == 'block') {
      x.innerHTML = '';
      x.style.display = "none";
    }
  }
</script>
<%
end if
%>
<a href="/shop.asp">> Keep Shopping</a>
<br>
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

  <!-- #include file="inc/footer.inc" -->
