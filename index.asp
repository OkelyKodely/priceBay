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
      <select name="category" id="category" onchange="window.location.href='?category='+this.value">
        <option value="all" selected>Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="misc">Miscellaneous</option>
      </select>
      <%
      elseif category = "fashion" then
      %>
      <select name="category" id="category" onchange="window.location.href='?category='+this.value">
        <option value="all">Everything</option>
        <option value="fashion" selected>Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="misc">Miscellaneous</option>
      </select>
      <%
      elseif category = "kitchen" then
      %>
      <select name="category" id="category" onchange="window.location.href='?category='+this.value">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen" selected>Kitchen</option>
        <option value="software">Software</option>
        <option value="misc">Miscellaneous</option>
      </select>
      <%
      elseif category = "software" then
      %>
      <select name="category" id="category" onchange="window.location.href='?category='+this.value">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software" selected>Software</option>
        <option value="misc">Miscellaneous</option>
      </select>
      <%
      elseif category = "misc" then
      %>
      <select name="category" id="category" onchange="window.location.href='?category='+this.value">
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
    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"
    
    set oRS = oConnection.Execute("SELECT * FROM products WHERE category='" & category & "' ORDER BY itemid DESC")

    if category = "all" then
      set oRS = oConnection.Execute("SELECT * FROM products ORDER BY itemid DESC")
    end if

    dim count
    count = 0

    while not oRS.eof

    if count mod 3 = 0 then
    %>
      <div stylef = "width:100%;float:left">
    <%
    end if
    %>
    <div style = "float:left; width: 200; height: 300">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
        <br><a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a>
    </div>
    <%
    if count mod 3 = 2 then
    %>
      </div><br>
    <%
    end if
    %>
<%
  oRS.movenext
  count = count + 1
wend

if count mod 3 <> 2 then
    %>
      </div>
    <%
end if

oConnection.close()
%>

  </div>
  
  <div style="position:relative;left:200px;top:100px">
    <!-- #include file="inc/footer.inc" -->
  </div>