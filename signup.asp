  <!-- #include file="inc/header.inc" -->
  <%
  dim firstname
  dim lastname
  dim username
  dim password
  dim address
  dim city
  dim stateorprovince
  dim country
  dim phone
  dim fax
  dim email



  firstname = request.form("firstname")
  lastname = request.form("lastname")
  username = request.form("username")
  password = request.form("password")
  address = request.form("address")
  city = request.form("city")
  stateorprovince = request.form("stateorprovince")
  country = request.form("country")
  phone = request.form("phone")
  fax = request.form("fax")
  email = request.form("email")



  if firstname <> "" then
    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"
    
    dim sqlstr

    sqlstr = "INSERT INTO shoppers (firstname, lastname, username, password, address, city, stateorprovince, country, phone, fax, email) VALUES ('"&firstname&"','"&lastname&"','"&username&"','"&password&"','"&address&"','"&city&"','"&stateorprovince&"','"&country&"','"&phone&"','"&fax&"','"&email&"')"

    oConnection.Execute(sqlstr)

    response.write "Registered!"

  end if


  if 1 = 1 then
  %>
  <div class="signup">
    <div style="height:60px">
      <span style="font-size:26;">Sign Up</span>
    </div>
  	<form method="post" action="">
      <div style="float:left;width:140px">First Name:</div>
      <div style="loat:left"><input type="text" name="firstname"></div>
      <span><br></span>
      <div style="float:left;width:140px">Last Name:</div>
      <div style="loat:left"><input type="text" name="lastname"></div>
      <span><br></span>
  		<div style="float:left;width:140px">Username:</div>
  		<div style="loat:left"><input type="text" name="username"></div>
  		<span><br></span>
  		<div style="float:left;width:140px">Password:</div>
  		<div style="loat:left"><input type="password" name="password"></div>
  		<span><br></span>
      <div style="float:left;width:140px">Address:</div>
      <div style="loat:left"><input type="text" name="address"></div>
      <span><br></span>
      <div style="float:left;width:140px">City:</div>
      <div style="loat:left"><input type="text" name="city"></div>
      <span><br></span>
      <div style="float:left;width:140px"><nobr>State or Province:</nobr></div>
      <div style="loat:left"><input type="text" name="stateorprovince"></div>
      <span><br></span>
      <div style="float:left;width:140px">Country:</div>
      <div style="loat:left"><input type="text" name="country"></div>
      <span><br></span>
      <div style="float:left;width:140px">Phone:</div>
      <div style="loat:left"><input type="text" name="phone"></div>
      <span><br></span>
      <div style="float:left;width:140px">Fax:</div>
      <div style="loat:left"><input type="text" name="fax"></div>
      <span><br></span>
      <div style="float:left;width:140px">Email:</div>
      <div style="loat:left"><input type="text" name="email"></div>
      <p></p>
  		<input type="submit" value="Sign Up" style="width:290px; height:50px; position: relative; left: 0px">
  	</form>
  </div>
<%
else

  if username = "admin" and password = "admin" then
%>
	Admin logged in.
<%
  else
    response.write "eror"
  end if
end if
%>
	<span><br></span>
	<span><br></span>
<center>
  <!-- #include file="inc/footer.inc" -->
</center>
