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

  if username = "" then
  %>
  <div class="login">
    <div style="height:70px">
  	  <span style="font-size:26;">Sign In</span>
    </div>
  	<form method="post" action="">
  		<div style="float:left;width:90px">Username:</div>
  		<div style="loat:left"><input type="text" name="username"></div>
  		<span><br></span>
  		<div style="float:left;width:90px">Password:</div>
  		<div style="loat:left"><input type="password" name="password"></div>
  		<p></p>
      <p></p>
  		<input type="submit" value="Login" style="top:30px;width:200px;height:40px;position:relative;left:20px">
  	</form>
  </div>
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
	<span><br></span>
	<span><br></span>
<center>
  <!-- #include file="inc/footer.inc" -->
</center>
