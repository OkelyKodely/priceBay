  <!-- #include file="inc/header.inc" -->
  <%
  dim category

  category = request.querystring("category")

  if category = "" then
    category = "all"
  end if
  %>
  <h1>&nbsp;</h1>
  <div class="auction1">
  
    <div class="shoptitle">
      <span style="font-size:26">Current Auctions</span>
    </div>
  <h1>&nbsp;</h1>

<div class="l-b2c__title">All you need is a paypal account to purchase items</div>
<img src="/graphics/images/ppez.png">

    <%
    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"

    dim ssql

    dim c, d

    c = request.querystring("c")

    d = request.querystring("d")

    if c = "" then

      c = 1

      d = 4

    end if
    
    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT *,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY id DESC) AS 'RowNumber'"
    ssql = ssql & "    FROM sellproducts"
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&c&" AND "&d&";"

    set oRS = oConnection.Execute(ssql)

    dim count
    count = 0

    while not oRS.eof

    if count mod 3 = 0 then
    %>
      <div stylef = "width:100%;float:left">
<%
      if count = 0 then
%>
      <div style = "float:left; width: 50px; height: 300px">
      <a href='buyproducts.asp?c=<%=c-4%>&d=<%=d-4%>'>less...</a>
      </div>
<%
      end if

    end if

    sqlstr = "SELECT * FROM mustpay WHERE itemid='" & oRS("id") & "'"

    set RS = oConnection.Execute(sqlstr)

    dim closed

    if RS.eof then
      closed = true

    %>
    <div style = "float:left; width: 250; height: 300">
        <a href='auction.asp?id=<%=oRS("id")%>'><img src='/productitems/<%=oRS("image")%>' width="150" height="150"></a>
        <br><a href='auction.asp?id=<%=oRS("id")%>'><%=oRS("name")%></a>
        <br>Seller: <a href='auction.asp?id=<%=oRS("id")%>'><%=oRS("username")%></a>
        <br>Opened for: <%=oRS("duration")%> days
    </div>
    <%
    else
    %>
    <div style = "float:left; width: 250; height: 300">
        <img src='/productitems/<%=oRS("image")%>' width="150" height="150">
        <br><%=oRS("name")%>
        <br>Seller: <%=oRS("username")%>
        <br><span style="color:red">Auction closed</span>
    </div>
    <%
    end if

    if count = d - 1 then
%>
      <div style = "float:left; width: 50px; height: 300px">
      <a href='buyproducts.asp?c=<%=c+4%>&d=<%=d+4%>'>more...</a>
      </div>
<%
    end if

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

    if count = d - 1 then
%>
      <div style = "float:left; width: 50px; height: 300px">
      <a href='buyproducts.asp?c=<%=c+4%>&d=<%=d+4%>'>more...</a>
      </div>
<%
    end if
if count mod 3 <> 2 then
    %>
      </div>
    <%
end if

%>

  </div>

<%
    dim username

    username = session("username")
    
    e = request.querystring("e")

    f = request.querystring("f")

    if e = "" then

      e = 1

      f = 4

    end if
    
    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT s.*,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY s.id DESC) AS 'RowNumber'"
    ssql = ssql & "    FROM mustpay a INNER JOIN sellproducts s ON a.itemid = s.id WHERE a.username = '"&username&"'"
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&e&" AND "&f&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    if not oRS.eof then

    %>
<div style="float:left;position:relative;left:100px">

    <div class="shoptitle" style="float:left">
      <span style="font-size:26">Your Won Auctions</span>
    </div>
  <h1>&nbsp;</h1>
    <%

    end if

    while not oRS.eof

    if count mod 3 = 0 then
    %>
      <div stylef = "width:100%;float:left">
<%
      if count = 0 then
%>
      <div style = "float:left; width: 50px; height: 300px">
      <a href='buyproducts.asp?e=<%=e-4%>&f=<%=f-4%>'>less...</a>
      </div>
<%
      end if
    end if
    %>
    <div style = "float:left; width: 250; height: 300">
        <a href='buysellproducts.asp?id=<%=oRS("id")%>'><img src='/productitems/<%=oRS("image")%>' width="150" height="150"></a>
        <br><a href='buysellproducts.asp?id=<%=oRS("id")%>'><%=oRS("name")%></a>
        <br>Seller: <a href='auction.asp?id=<%=oRS("id")%>'><%=oRS("username")%></a>
        <br>You won this item!
    </div>
    <%
    if count = d - 1 then
%>
      <div style = "float:left; width: 50px; height: 300px">
      <a href='buyproducts.asp?e=<%=e+4%>&f=<%=f+4%>'>more...</a>
      </div>
<%
    end if

    if count mod 3 = 2 then
    %>
      </div><br>
</div>
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
</div>
    <%
end if
%>
<h1>&nbsp;</h1>
<h1>&nbsp;</h1>
<h1>&nbsp;</h1>
<h1>&nbsp;</h1>
<h1>&nbsp;</h1>
<h1>&nbsp;</h1>
<h1>&nbsp;</h1>
<h1>&nbsp;</h1>
    <!-- #include file="inc/footer.inc" -->
