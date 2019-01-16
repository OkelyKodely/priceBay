  <!-- #include file="inc/header.inc" -->
  
  <script language="javascript">

    function interpretUsername(username) {
  
      return username.value.length > 5;
  
    }

    function interpretEmail(email) {
  
      if (/^(\S+)@(\S+).(\S+)/.exec(email)) {
  
        return true;
  
      } else {
  
        return false;
  
      }
  
    }

    function validateThenSubmit() {
  
      var frm = document.getElementById("frm");

      var username = document.getElementById("username");
  
      var usernameIsValid = interpretUsername(username);

      var email = document.getElementById("email").value;
  
      var emailIsValid = interpretEmail(email);

      if(usernameIsValid &&
         emailIsValid) {
  
        frm.submit();
  
      } else {
  
        alert("fix your errors!!~");
  
      }
  
    }
  
  </script>

  <%
  dim firstname
  dim lastname
  dim username
  dim password
  dim pusername
  dim address
  dim city
  dim stateorprovince
  dim country
  dim phone
  dim fax
  dim email
  dim subscribe

  firstname = request.form("firstname")
  lastname = request.form("lastname")
  username = request.form("username")
  password = request.form("password")
  pusername = request.form("pusername")
  address = request.form("address")
  city = request.form("city")
  stateorprovince = request.form("stateorprovince")
  country = request.form("country")
  phone = request.form("phone")
  fax = request.form("fax")
  email = request.form("email")
  subscribe = request.form("subscribe")

  if firstname <> "" then
    dim sqlstr

    dim oRs

    sqlstr = "SELECT * FROM shoppers WHERE email = '"&email&"'"

    set oRs = oConnection.Execute(sqlstr)

    if oRs.eof then

      if subscribe = "checked" then

        subscribe = 1

      else

        subscribe = ""

      end if

      sqlstr = "INSERT INTO shoppers (subscribe, firstname, lastname, username, password, address, city, stateorprovince, country, phone, fax, email, paypal_user) VALUES ("&subscribe&",'"&firstname&"','"&lastname&"','"&username&"','"&password&"','"&address&"','"&city&"','"&stateorprovince&"','"&country&"','"&phone&"','"&fax&"','"&email&"','"&pusername&"')"

      oConnection.Execute(sqlstr)

      response.write "Registered!"

    else
    %>
    <script>
      alert('Account for email <%=email%> already exists.');
    </script>
    <%
    end if

  end if
  %>

  <div class="signup" style="float:left;position:relative;top:-100px">
    <div style="height:60px">
      <div>
      <span style="font-size:36;">Sign Up</span><br>
    </div>
      <span style="position:relative;left:500px;top:0px"><img src="/graphics/images/signup-for-free.png"></span><br>
    </div>
  	<form method="post" id="frm" action="" onsubmit="return validateThenSubmit()">
      <div style="float:left;width:140px">First Name:</div>
      <div style="loat:left"><input type="text" name="firstname"></div>
      <span><br></span>
      <div style="float:left;width:140px">Last Name:</div>
      <div style="loat:left"><input type="text" name="lastname"></div>
      <span><br></span>
  		<div style="float:left;width:140px">Username:</div>
  		<div style="loat:left"><input type="text" id="username" name="username"></div>
  		<span><br></span>
  		<div style="float:left;width:140px">Password:</div>
  		<div style="loat:left"><input type="password" name="password"></div>
  		<span><br></span>
      <div style="float:left;width:140px">Paypal Username:</div>
      <div style="loat:left"><input type="text" id="pusername" name="pusername"></div>
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
      <div style="loat:left"><input type="text" id="email" name="email"></div>
      <span><br></span>
      <div style="float:left;width:140px">Subscribe:</div>
      <div style="loat:left"><input type="checkbox" id="subscribe" name="subscribe"> Subscribe</div>
      <p>You are given the option to subscribe to our marketing material.  By clicking on Subscribe you agree to receive information from us regarding our products and services.</p>
  		<input type="submit" value="Sign Up" style="width:290px; height:50px; position: relative; left: 0px">
  	</form>
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

  <!-- #include file="inc/footer.inc" -->
