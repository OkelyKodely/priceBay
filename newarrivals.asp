  <!-- #include file="inc/header.inc" -->
  <div class="shop" style="float:left">
  
    <div class="shoptitle">
      <span style="font-size:26">New Arrivals</span>
    </div><br>

    <%
    dim a, b

    a = request.querystring("a")

    b = request.querystring("b")

    if a = "" then

      a = 1

      b = 8

    end if

    dim ssql
    
    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT *,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY itemid DESC) AS 'RowNumber'"
    ssql = ssql & "    FROM products WHERE newarrivals = 1"
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    dim count
    count = 0

%>
      <div style = "width:100%;float:left">
      <div style = "float:left; width: 50px; height: 30px">
      <a href='newarrivals.asp?a=<%=a-8%>&b=<%=b-8%>'>less...</a>
    </div>
<%
    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div style = "width:1200px;float:left;position:relative;left:0px">
    <%
    end if
    %>
    <div style = "float:left; width: 300px; height: 300px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>' width="300" height="230"></a>
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

      <div style = "float:left; width: 50px; height: 300px">
      <a href='newarrivals.asp?a=<%=a+8%>&b=<%=b+8%>'>more...</a>
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
    <!-- #include file="inc/footer.inc" -->
