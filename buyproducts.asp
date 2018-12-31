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
      <span style="font-size:26">Auction</span>&nbsp;|
      <span style="font-size:16"><a href="won.asp">Won items</a></span>
    </div>

    <%
    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"
    
    set oRS = oConnection.Execute("SELECT duration, image, id, name FROM sellproducts ORDER BY id DESC")

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
        <a href='auction.asp?id=<%=oRS("id")%>'><img src='/productitems/<%=oRS("image")%>' width="200" height="150"></a>
        <br><a href='auction.asp?id=<%=oRS("id")%>'><%=oRS("name")%></a>
        <br>Opened for: <%=oRS("duration")%> days
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