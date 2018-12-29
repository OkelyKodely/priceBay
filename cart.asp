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
  	  <span style="font-size:26">Your Shopping Cart</span>
    </div>

    <div class="categoryitems">
      <%
      if category = "all" then
      %>
      <select name="category" id="category" onchange="window.location.href='?category='+this.value">
        <option value="all" selected>Anything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="misc">Miscellaneous</option>
      </select>
      <%
      elseif category = "fashion" then
      %>
      <select name="category" id="category" onchange="window.location.href='?category='+this.value">
        <option value="all">Anything</option>
        <option value="fashion" selected>Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="misc">Miscellaneous</option>
      </select>
      <%
      elseif category = "kitchen" then
      %>
      <select name="category" id="category" onchange="window.location.href='?category='+this.value">
        <option value="all">Anything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen" selected>Kitchen</option>
        <option value="software">Software</option>
        <option value="misc">Miscellaneous</option>
      </select>
      <%
      elseif category = "soft" then
      %>
      <select name="category" id="category" onchange="window.location.href='?category='+this.value">
        <option value="all">Anything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="misc" selected>Miscellaneous</option>
      </select>
      <%
      elseif category = "misc" then
      %>
      <select name="category" id="category" onchange="window.location.href='?category='+this.value">
        <option value="all">Anything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="misc" selected>Miscellaneous</option>
      </select>
      <%
      end if
      %>
    </div>
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
    <%

    while not oRS.eof
      dim iid
      iid = oRS("itemid")

      sqlstr = "SELECT * FROM products WHERE itemid = " & iid

      set r_s = oConnection.Execute(sqlstr)

      while not r_s.eof
        %>
        <%=r_s("name")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img height=50 src=/productitems/<%=r_s("image")%>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        $<%=r_s("price")%>
        <br>
        <%
        total = total + cdbl(r_s("price"))
        r_s.movenext
      wend

      oRS.movenext
    wend
 
  %>
  </div>
  <%
  end if
  %>
<hr>
<h2>Total: $<%=total%></h2>
<a href="cart.asp?do=clear" style="color:#ff0000"><button>Clear cart</button></a>
<br><br>
<a href="/shop.asp" style="color:#0000ff">>> Keep Shopping</a>
<br>
<p>&nbsp;</p>

  <form method="post" action="buy.asp">
    <input type="hidden" name="t" value=<%=total%>>
    <input type="submit" value="Checkout" style="width:200px; height:50px">
  </form>

  </div>
  
  <div style="position:relative;left:200px;top:100px">
    <!-- #include file="inc/footer.inc" -->
  </div>