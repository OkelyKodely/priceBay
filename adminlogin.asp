  <br>
  <br>
  <br>
  <br>
  <br>
  <%
  dim username
  dim password

  if session("ausername") = "" then

    username = request.form("username")
    password = request.form("password")

  else

    username = session("ausername")
    password = session("apassword")

  end if

  %>
  <div class="login" style="float:left; width:100%">
  <h1 style="position:relative;left:350px;top:-50px">Admin Login</h1>
  <%
  if username = "" then
  %>
      <div style="width:600px;height:600px;position:relative;left:150px;top:-200px">
        <div>

    <div style="position:relative;left:200px;top:150px;z-index:2">
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
<%
else

  dim sqlstr

  if username = "admin_cho4321" and password = "admin231!#" then
    session("ausername") = username
    session("apassword") = password
  %><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=username%> logged in.  Thanks.

  <a href="adminitems.asp">Admin Items</a>  <a href="adminlogout.asp">Admin Logout</a>

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
