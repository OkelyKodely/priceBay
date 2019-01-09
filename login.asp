  <!-- #include file="inc/header.inc" -->
  <%
  dim username
  dim password

  if session("username") = "" then

    username = request.form("username")
    password = request.form("password")

  else

    username = session("username")
    password = session("password")

  end if

  %>
  <h1>&nbsp;</h1>
  <div class="login" style="float:left; width:100%">
  <%
  if username = "" then
  %>
    <div style="height:70px">
  	  <span style="font-size:26;">Buyer/Seller/Customer Sign In</span>
    </div>
  	<form method="post" action="">
  		<div style="float:left;width:90px">Username:</div>
  		<div style="loat:left"><input type="text" name="username"></div>
  		<span><br></span>
  		<div style="float:left;width:90px">Password:</div>
  		<div style="loat:left"><input type="password" name="password"></div>
  		<input type="submit" value="Login" style="top:30px;width:140px;height:40px;position:relative;left:0px">
  	</form>
<%
else

    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"
    
    dim sqlstr

    sqlstr = "SELECT * FROM shoppers WHERE username='"&username&"' AND password='"&password&"'"

    set oRS = oConnection.Execute(sqlstr)

if not oRS.eof then
  session("username") = oRS("username")
%><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=oRS("username")%> logged in.  Thanks.
<%
  else
    if session("username") = "" then
      response.write "not signed in"
    end if
  end if
end if
%>
  </div>

  <h1>&nbsp;</h1>
  <h1>&nbsp;</h1>
  <h1>&nbsp;</h1>
  <h1>&nbsp;</h1>
  <h1>&nbsp;</h1>

<div style="position:relative;left:100px;width:900px;font-size:12px">
*Ecommerce takes many forms. It is the sale and purchase of products and services via electronic systems. In some case the product or service may also be delivered via an electronic system, whereas in other cases the product or service will be delivered offline.
<br><br>
*Ecommerce may be be business-to-business (B2B), business-to-consumer (B2C) or consumer-to-consumer. The last of the categories of transaction will usually involve an ecommerce intermediary, such as eBay. Increasingly, B2B and B2C transactions are also mediated by third party platforms.
</div>

  <!-- #include file="inc/footer.inc" -->
