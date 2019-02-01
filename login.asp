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
  <div class="login" style="float:left; width:100%; height:700px">
  <h1 style="position:relative;left:-100px;top:-50px">Returning Customer - Sign In</h1>
  <%
  if username = "" then
  %>
      <div style="width:600px;height:600px;background-image:url('/graphics/images/loginbg.png');background-repeat:no-repeat;background-attached:fixed;background-position:center;position:relative;left:-300px;top:-200px">
        <div>

    <div style="position:relative;left:50px;top:150px;z-index:2">
    <div style="height:70px;position:relative;top:-50px">
    </div>
  	      <form method="post" action="">
  		      <div style="float:left;width:90px">Username:</div>
  		      <div style="loat:left"><input type="text" name="username"></div>
  		      <span><br></span>
  		      <div style="float:left;width:90px">Password:</div>
  		      <div style="loat:left"><input type="password" name="password"></div>
  		      <input type="submit" value="Login" style="top:30px;width:140px;height:40px;position:relative;left:0px">
  	      </form>
        </div>
      </div>
    </div>

      <div style="float:left;width:400px;height:600px;ackground-image:url('/graphics/images/loginbg.png');background-repeat:no-repeat;background-attached:fixed;background-position:center;position:relative;left:300px;top:-800px">
        <div>

    <div style="position:relative;left:50px;top:150px;z-index:2">
    <div style="height:70px;position:relative;top:-50px">
    </div>
    Don't have an account with us?<br>
    <a href="signup.asp"><h1>Create Account</h1></a>
        </div>
      </div>
    </div>

<%
else

    dim sqlstr

    sqlstr = "SELECT * FROM shoppers WHERE username='"&username&"' AND password='"&password&"'"

    set oRS = oConnection.Execute(sqlstr)

if not oRS.eof then
  session("username") = oRS("username")
%><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=oRS("username")%> logged in.  Thanks.
<%
  else
    if session("username") = "" then
      response.write "not signed in"
    end if
  end if
end if
%>
  </div>

<p>&nbsp;</p>
  <!-- #include file="inc/footer.inc" -->
