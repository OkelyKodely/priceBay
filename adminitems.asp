  <%
  dim username
  dim password

  if session("ausername") = "" then

    response.redirect "adminlogin.asp"

  else

    username = session("ausername")
    
  end if

  %>
  <div style="float:left; width:100%">
  <%
  if username = "" then
  else

    dim sqlstr

dim oConnection

sConnection = "Dsn=odbc1;Integrated Security=True"

set oConnection = server.createobject("ADODB.Connection")

oConnection.Open "odbc2","sa","coppersink21"

sqlstr = "select * from products order by itemid desc"

dim rs

set rs = oConnection.execute(sqlstr)
    %>
    <a href="adminitemsinsert.asp">Items Insert</a>
    <table width="100%">
      <tr>
        <td>Name</td>
        <td>Category</td>
        <td>Price</td>
      </tr>
      <tr>
        <td colspan="3">
          <hr>
        </td>
      </tr>
      </tr>
    <%

  if username = "admin_cho4321" then
  session("ausername") = username
  while not rs.eof
%>
  <tr>
    <td><a href='adminitemsedit.asp?itemid=<%=rs("itemid")%>'><%=rs("name")%></a></td>
    <td><%=rs("category")%></td>
    <td><%=rs("price")%></td>
  </tr>
<%
  rs.movenext
  wend
  %>
  </table>
  <%
  else
    if session("ausername") = "" then
      response.write "not signed in"
    end if
  end if
  end if
%>
  </div>

<h1>&nbsp;</h1>
