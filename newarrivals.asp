  <!-- #include file="inc/header.inc" -->
  <div class="shop" style="float:left">
  
    <div class="shoptitle">
      <span style="font-size:26">New Arrivals</span>
    </div><br>

    <div class="categoryitems1">
      <%
      if category = "all" then
      %>
      <select name="category" id="category" onchange="window.location.href='?category='+this.value">
        <option value="all" selected>Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer">Computer</option>
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
        <option value="computer">Computer</option>
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
        <option value="computer">Computer</option>
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
        <option value="computer">Computer</option>
        <option value="misc">Miscellaneous</option>
      </select>
      <%
      elseif category = "computer" then
      %>
      <select name="category" id="category" onchange="window.location.href='?category='+this.value">
        <option value="all">Everything</option>
        <option value="fashion">Fashion</option>
        <option value="kitchen">Kitchen</option>
        <option value="software">Software</option>
        <option value="computer" selected>Computer</option>
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
        <option value="computer">Computer</option>
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
    
    set oRS = oConnection.Execute("SELECT * FROM products WHERE newarrivals = 1 ORDER BY itemid DESC")

    dim count
    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div stylef = "width:100%;float:left">
    <%
    end if
    %>
    <div style = "float:left; width: 200px; height: 300px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
      <div>
        <a style="" href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a>
      </div>
      </p>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div><br>
    <%
    end if
    %>
<%
  oRS.movenext
  count = count + 1
wend

if count mod 4 <> 3 then
    %>
      </div>
    <%
end if

oConnection.close()
%>

  </div>
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
    <!-- #include file="inc/footer.inc" -->
