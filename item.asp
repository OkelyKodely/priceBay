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
  	  <span style="font-size:26"><a href="shop.asp">Shop</a></span>
    </div>

    <div class="categoryitems">
      <%
      if category = "all" then
      %>
      <select name="category" id="category" onchange="window.location.href='shop.asp?category='+this.value">
        <option value="all" selected>Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="misc">Miscellaneous</option>
      </select>
      <%
      elseif category = "fashion" then
      %>
      <select name="category" id="category" onchange="window.location.href='shop.asp?category='+this.value">
        <option value="all">Everything</option>
        <option value="fashion" selected>Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="misc">Miscellaneous</option>
      </select>
      <%
      elseif category = "kitchen" then
      %>
      <select name="category" id="category" onchange="window.location.href='shop.asp?category='+this.value">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen" selected>Kitchen</option>
        <option value="software">Software</option>
        <option value="misc">Miscellaneous</option>
      </select>
      <%
      elseif category = "software" then
      %>
      <select name="category" id="category" onchange="window.location.href='shop.asp?category='+this.value">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software" selected>Software</option>
        <option value="misc">Miscellaneous</option>
      </select>
      <%
      elseif category = "misc" then
      %>
      <select name="category" id="category" onchange="window.location.href='shop.asp?category='+this.value">
        <option value="all">Everything</option>
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
    dim cartid

    cartid = session("cartid")

    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"

    dim itemid

    itemid = request.querystring("itemid")
    
    dim sqlstr

    if cartid = "" then

      sqlstr = "SELECT max(cid)+1 AS cid FROM Cart"

      set rs = oConnection.Execute(sqlstr)

      if not rs.eof then
        cartid = rs("cid")
      else
        cartid = 1
      end if

      session("cartid") = cartid
      
    end if

    sqlstr = "SELECT * FROM products WHERE itemid='" & itemid & "'"

    set oRS = oConnection.Execute(sqlstr)

    if not oRS.eof then
      dim dsc
      dsc = oRS("dsc")
    %>
  <div id = "container" style = "width:100%">
      <div id = "middle" style = "float:left; width: 250;">
          <a href=item.asp?itemid=<%=oRS("itemid")%>><img width="220" src=/productitems/<%=oRS("image")%>></a>
          <br><%=oRS("name")%>
      </div>
      <div id = "right" style = "float:left; width: 200;">
        <span style="color:#000">Description:</span>
        <%=dsc%><br><br>
        <span style="color:#000">Price:</span>
        $<%=oRS("price")%><br><br>
        <form method="post" action="cart.asp">
          <input type="hidden" name="itemid" value=<%=oRS("itemid")%>>
          <input type="submit" value="Add To cart" style="width:200px; height:40px">
        </form>
      </div>
  </div>
  <%
  end if
  %>

  </div>
  
  <div style="position:relative;left:200px;top:100px">
    <!-- #include file="inc/footer.inc" -->
  </div>