  <!-- #include file="inc/header.inc" -->
  <style>
    .title {
      font-size: 200%;
      font-stretch: condensed;
      font-weight: bold;
    }
  </style>
  <div class="shop">
  
    <div style="width:1000px">

    <div class="title" style="font-size:40px;color:white;background-color:gray;position:relative;top:-50px;width:760px;height:70px">
      <!--<img src="/graphics/images/shopping-cart-banner.png">-->
      <br>
      &nbsp;YOUR CART
    </div>

    <div style="width:500px; float:left">
      <a href="shopcategories.asp"><img src="/graphics/images/shopformoreitems.png"></a>
    </div>

    <div style="width:500px; float:left">
      <a href="https://www.ups.com"><img src="/graphics/images/upstransit.png"></a>
    </div>
      
    </div>

    <h1>&nbsp;</h1>

    <div style="width:1200px;">
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
          cartid = rs("id") + 1
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
   %><br><br>
    <div style="float:left;width:600px">
    <div style = "width:900px;float:left">

    <div style="float:left;width:60px">image</div>
    <div style="float:left;width:260px">item id</div>
    <div style="float:left;width:110px">category</div>
    <div style="float:left;width:230px">price</div>

    </div>

    <%
if oRS.eof then
%>
<h1>There are no items in your cart.</h1>
<%
end if
    while not oRS.eof
      dim iid
      iid = oRS("itemid")

      sqlstr = "SELECT image, name, category, discount, price, dsc FROM products WHERE itemid = " & iid

      set r_s = oConnection.Execute(sqlstr)

      while not r_s.eof
        %>
      <div style = "width:760px;height:170px;border:1px solid gray">

      <div style="float:left;width:60px"><div style="height:40px;width:40px"><img src=/productitems/<%=r_s("image")%>></div>&nbsp;</div>&nbsp;
      <div style="float:left;width:260px"><a href='item.asp?itemid=<%=iid%>'><%=r_s("name")%></a></div>&nbsp;
      <div style="float:left;width:110px"><%=r_s("category")%></div>&nbsp;
      <div style="float:left;width:230px">$<%response.write formatnumber((100-cdbl(r_s("discount")))*cdbl(r_s("price"))/100,2)%>
<br>
<b>Description:</b> <%=left(r_s("dsc"),150)%>...
      </div>

      </div><br>
        <%
        total = total + (100-cdbl(r_s("discount")))*cdbl(r_s("price"))/100
        r_s.movenext
      wend

      oRS.movenext
    wend
 
  %>
    </div>
  <%
  end if

  if total > 0 then
  %>

<div style="border:10px solid gray;float:left;width:262px;height:300px;position:relative;left:200px;top:-213px">
  <h3>Summary</h3>
<h4 style="color:red">Subtotal: $<%=formatnumber(total,2)%></h4>
<h4>UPS Ground Shipping Cost: <br>$20.00&nbsp;<div id="mid" style="display:none;"></div></h4>
<h4>Total: $<%=formatnumber(total+20,2)%></h4>
<a href="cart.asp?do=clear" style="color:#ff0000"><button>Clear cart</button></a>
<script>
  var x = document.getElementById("mi");
  x.innerHTML = '<img src="/graphics/images/shipping.png"><font size=-2>$20 flat fee fore shipping using UPS Ground Shipping method.  Shipping takes usually 1 ~ 6 business days.</font>';
  x.style.display = "block";
</script>
  <form method="post" action="buy.asp">
    <input type="hidden" name="t" value=<%=total%>>
    <input type="submit" value="NEXT STEP" style="background-color:yellow;color:red;font-size:20px;font-weight:bold;width:260px; height:70px">
  </form>

</div>
<%
end if
%>

<%
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
<%
'  <!-- #include file="inc/footer.inc" -->
%>
