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
  dim ppassword
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
  pusername = request.form("pusername")
  ppassword = request.form("ppassword")
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

    sqlstr = "INSERT INTO shoppers (firstname, lastname, username, password, address, city, stateorprovince, country, phone, fax, email, paypal_user, paypal_pw) VALUES ('"&firstname&"','"&lastname&"','"&username&"','"&password&"','"&address&"','"&city&"','"&stateorprovince&"','"&country&"','"&phone&"','"&fax&"','"&email&"','"&pusername&"','"&ppassword&"')"

    oConnection.Execute(sqlstr)

    response.write "Registered!"

  end if
  %>

  <div class="signup" style="float:left">
    <div style="height:60px">
      <span style="font-size:26;">Sign Up</span><br>
      <span style="font-size:12;">Sign up is free for all customers and there is no charge to get your products listed if you are selling or buying too.  Purchases are subject to terms and condition on the Terms of Service (TOS).</span>
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
      <div style="float:left;width:140px">Paypal Password:</div>
      <div style="loat:left"><input type="password" name="ppassword"></div>
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
      <p>&nbsp;</p>
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

<div style="position:relative;left:100px;width:900px;font-size:12px">
*Ecommerce takes many forms. It is the sale and purchase of products and services via electronic systems. In some case the product or service may also be delivered via an electronic system, whereas in other cases the product or service will be delivered offline.
<br><br>
*Ecommerce may be be business-to-business (B2B), business-to-consumer (B2C) or consumer-to-consumer. The last of the categories of transaction will usually involve an ecommerce intermediary, such as eBay. Increasingly, B2B and B2C transactions are also mediated by third party platforms.
</div>

  <!-- #include file="inc/footer.inc" -->
