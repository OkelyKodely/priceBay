  <!-- #include file="inc/header.inc" -->
  <h1>&nbsp;</h1>
  <div class="shop" style="position:relative;top:-120px">
  
    <div class="shoptitle">
      <span style="font-size:26">Your Search Results</span>
    </div>

    <div style="width:650px">
    <%
    dim sqlstr

    dim query

    query = request.querystring("query")

    query = replace(query, " ", "%")

    dim a, b

    a = request("a")

    b = request("b")

    if a = "" then
    a = 1
    b = 6
    end if

    dim ssql

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT itemid, name, price, category, image, dsc,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY itemid DESC) AS 'RowNumber'"
    ssql = ssql & "    FROM products WHERE name like '%"&query&"%'"
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    %>
    
    <div style = "width:100%;float:left">

    <div style="float:left;width:840px">Results for: <%=query%><hr style="width:1200px">
</div>
    </div>
      <%
      dim count

      count = 0

    while not oRS.eof and query <> ""
    if count = 0 then
    %>
      <div stylef = "width:800px;float:left;position:relative;left:-100px">
      <div style = "float:left; width: 50px; height: 30px">
      <a href='shopresults.asp?query=<%=query%>&a=<%=a-6%>&b=<%=b-6%>'>less...</a>
    </div>
    <%
    end if

      %>
      <div style = "width:1000px;float:left">

      <div style="float:left;width:220px"><%=oRS("itemid")%> &nbsp;&nbsp;&nbsp;&nbsp;<a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a></div>
      <div style="float:left;width:220px">$<%=oRS("price")%> USD</div>
      <div style="float:left;width:220px">Category: <%=oRS("category")%></div>
      <div style="float:left;width:220px"><img src='/productitems/<%=oRS("image")%>'></div>
      <div style="float:left;width:100%">Description: <%=oRS("dsc")%></div>

      </div>

      <h1>&nbsp;</h1>
      <%
      oRS.movenext
      count = count + 1
    wend

    oConnection.close()
    %>
    </div>
      <div style = "float:left; width: 50px; height: 30px">
      <a href='shopresults.asp?query=<%=query%>&a=<%=a+6%>&b=<%=b+6%>'><img src="/graphics/images/more.png"></a>
      </div>

  </div>

    </div>

    <!-- #include file="inc/footer.inc" -->
