  <!-- #include file="inc/header.inc" -->
  <%
  dim category

  category = request.querystring("category")

  if category = "" then
    category = "all"
  end if
  %>
  <h1>&nbsp;</h1>
  <div class="shop">
  
    <div class="shoptitle">
      <span style="font-size:26">Auction</span>
    </div>

    <%
    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"

    dim username

    username = session("username")
    
    set oRS = oConnection.Execute("SELECT a.*, s.* FROM mustpay a INNER JOIN sellproducts s ON a.itemid = s.id WHERE a.username = '"&username&"' ORDER BY s.id DESC")

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
        <a href='oauction.asp?id=<%=oRS("id")%>'><img src='/productitems/<%=oRS("image")%>' width="200" height="150"></a>
        <br><a href='oauction.asp?id=<%=oRS("id")%>'><%=oRS("name")%></a>
        <br>You won this item!
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