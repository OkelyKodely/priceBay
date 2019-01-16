<html>
  <head>
    <script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("myBtn").style.display = "block";
  } else {
    document.getElementById("myBtn").style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
} 
    </script>
    <style>
        body {
            font-family: arial;
            color:#626262;
            background-color: white;
            height:100%;
        }
        a {
            text-decoration: none;
            color:#828282;
        }
        .signup {
            position:relative;
            top:-20px;
            bottom:30px;
            left:100px;
        }
        .login {
            position:relative;
            top:60px;
            left:450px;
        }
        .items {
            float:left;
            position:relative;
            top:10px;
            left:100px;
        }
        .categoryitems {
            position:relative;
            top:-25px;
            left:677px;
        }
        .categoryitems1 {
            position:relative;
            top:-25px;
            left:677px;
        }
        .shop {
            position:relative;
            top:30px;
            left:100px;
            width:100%;
/*            height:3000px;*/
        }
        .shop1 {
            position:relative;
            top:30px;
            left:100px;
            width:100%;
/*            height:3000px;*/
        }
        .sell {
            position:relative;
            top:30px;
            left:100px;
            width:100%;
            height:1000px;
        }
        .auction {
            font-family:verdana;
            position:relative;
            top:0px;
            left:100px;
            width:500px;
            height:800px;
        }
        .faq {
            font-family:verdana;
            position:relative;
            top:0px;
            left:100px;
            width:500px;
            height:800px;
        }
        .auction1 {
            position:relative;
            top:0px;
            left:100px;
            height:800px;
        }
      .footer {
            position:relative;
            color:white;
            background-color: black;
            top:0px;
            left:0px;
            width:100%;
      }
      .nav {
        position:relative;
        top:10px;
        left:100px;
      }
      .menu {
        position:relative;
        top:15px;
        left:60px;
        
      }
      .tos {
        font-family:verdana;
        position:relative;
        top:20px;
        left:100px;
        width:500px;
      }
      .about {
        font-family:verdana;
        position:relative;
        top:20px;
        left:100px;
        width:500px;
        height:700px;
      }
      .menuitem {
            font-size:16px;
        float:left;
        height:25px;
        width:140px;
            text-align: center;
      }
      a:hover {
          font-size:16px;
          color:black;
          height:25px;
          width:120px;
          text-align: center;
      }

      .l-whyebay__wrapper{
      width:100%;max-width:810px;margin:0 auto}.l-whyebay__title{font-family:"Helvetica Neue","Segoe UI",Helvetica,Arial,sans-serif;line-height:1.25;font-size:3.125rem;font-weight:lighter;display:inline-block;margin-bottom:15px;padding:0 10px;width:100%;max-width:770px}@media screen and (max-width:600px){.l-whyebay__title{font-weight:200;font-size:1.5rem}}.l-whyebay__subtitle{font-size:1.062rem;line-height:1.4;font-weight:normal;display:inline-block;max-width:490px;margin-bottom:0}@media screen and (max-width:600px){.l-whyebay__subtitle{font-size:.875rem}}.l-whyebay__body{font-size:1.062rem;line-height:1.4;font-weight:normal;max-width:600px;margin:0 auto}@media screen and (max-width:600px){.l-whyebay__body{font-size:.875rem}}.l-whyebay__tiles{padding:0;margin:40px 0 0;list-style:none}.l-whyebay__tile{min-width:235px;display:inline-block;padding:0 3.5%;margin-bottom:40px;max-width:33%;vertical-align:top}.l-whyebay__tile-image-wrapper{margin-bottom:16px;height:180px;width:220px;max-width:100%}.l-whyebay__tile-image{max-width:100%;position:relative;top:50%;transform:translateY(-50%)}.l-whyebay__tile-caption{font-size:.875rem;font-weight:normal;margin:0 auto;line-height:1.4;font-size:1.075rem}@media screen and (max-width:600px){.l-whyebay__tile-caption{font-size:.8125rem}}.l-whyebay__tile-caption span{display:block;font-weight:bold}.l-whyebay__uk-list{font-size:1.062rem;line-height:1.4;font-weight:normal;max-width:700px;margin:10px auto 0;list-style:none}@media screen and (max-width:600px){.l-whyebay__uk-list{font-size:.875rem}}.l-whyebay__uk-list li{text-align:left;padding-left:16px;text-indent:-16px}.l-whyebay__uk-list li:before{content:"â€¢ ";color:#f5ad22;font-size:1.5em;top:5px;left:-10px;position:relative}@media screen and (max-width:600px){.l-whyebay{padding:40px 25px 50px}.l-whyebay__title{margin-top:0;padding:0;margin-bottom:10px}.l-whyebay__tiles{margin-top:25px}.l-whyebay__tile{width:100%}.l-whyebay__tile-image{width:auto}.l-whyebay__subtitle{max-width:100%;margin:25px 0 0
      }}

      .l-b2c__wrapper,.l-b2c__img{
      height:460px}.l-b2c__img:before{content:"\2060"}.l-b2c__img{float:right;background-size:contain;background-repeat:no-repeat;background-position:left center;position:relative;width:46%;left:71px;top:0px;height:415px}.l-b2c__mwebimg{display:none}.l-b2c__wrapper{float:left;margin-left:82px;width:45%;display:table;position:relative;top:-0.25rem}.l-b2c__valign{display:table-cell;text-align:left;vertical-align:middle;font-family:"Helvetica Neue","Segoe UI",Helvetica,Arial,sans-serif}.l-b2c__title,.l-b2c__title2{font-size:3.125rem;line-height:1.25;font-weight:lighter}.l-b2c__title2{top:-1rem}.l-b2c__title{font-size:3.125rem}.l-b2c__body{font-size:1.062rem;margin-bottom:9px;width:400px;position:relative;top:27px;line-height:1.5;font-weight:normal}.l-b2c__body a{position:relative;top:1.5rem}.l-b2c__CTA{font-size:1.062rem;line-height:1.4;font-weight:normal;position:relative;padding-left:10px !important;padding-right:10px !important;width:250px;text-align:center}@media screen and (max-width:600px){.l-b2c__CTA{font-size:.875rem}}@media screen and (max-width:1024px){.l-b2c__body{width:400px}}@media screen and (max-width:768px){.l-b2c__body{width:92%}.l-b2c__img{display:none}.l-b2c__wrapper{float:left;margin-left:5.4rem;width:66%}}@media screen and (max-width:425px){.l-b2c__body{width:92%}.l-b2c__img{display:none}.l-b2c__wrapper{float:none;margin:0 auto;width:100%;display:table}.l-b2c__valign{text-align:center}.l-b2c__title,.l-b2c__title2{font-size:1.5rem}.l-b2c__body{font-size:1.062rem}.l-b2c__content{margin:0rem 2rem;width:auto;max-width:425px}}@media screen and (max-width:700px){.l-b2c .l-b2c{height:485px}.l-b2c__content{margin:0rem 2rem;max-width:1113px}.l-b2c__body{width:74%;margin-bottom:45px;margin-left:83px;top:19px}.l-b2c__img{display:none}.l-b2c__mwebimg{display:block;background-size:contain;background-repeat:no-repeat;background-position:0 center;position:relative;width:70%;height:170px;top:32px;left:16%}.l-b2c__title,.l-b2c__title2{font-size:1.875rem;line-height:1.25;font-weight:lighter}.l-b2c__body{font-size:.9375rem}.l-b2c__valign{text-align:center}.l-b2c__wrapper{float:none;margin:0 auto;width:100%;display:table;top:-56px}}@media screen and (max-width:600px){.l-b2c__mwebimg{width:82%;left:10%}.l-b2c__body{width:100%;margin-left:0}}@media screen and (max-width:500px){.l-b2c__mwebimg{width:101%;height:170px;top:32px;left:-1%}}@media screen and (max-width:400px){.l-b2c__mwebimg{height:130px;top:25px}.l-b2c .l-b2c{height:520px}.l-b2c__wrapper{top:-38px}}@media screen and (max-width:300px){.l-b2c__mwebimg{width:103%;height:90px}.l-b2c .l-b2c{height:520px}.l-b2c__wrapper{top:0}}@media screen and (min-width:701px) and (max-width:902px){.l-b2c .l-b2c__img{display:none}.l-b2c .l-b2c__wrapper{float:left;margin-left:5.4rem;width:65%;display:table;position:relative;top:-0.25rem
      }}

      #myBtn {
        display: none; /* Hidden by default */
        position: fixed; /* Fixed/sticky position */
        bottom: 20px; /* Place the button at the bottom of the page */
        right: 30px; /* Place the button 30px from the right */
        z-index: 99; /* Make sure it does not overlap */
        border: none; /* Remove borders */
        outline: none; /* Remove outline */
        background-color: green; /* Set a background color */
        color: white; /* Text color */
        cursor: pointer; /* Add a mouse pointer on hover */
        padding: 15px; /* Some padding */
        border-radius: 15px; /* Rounded corners */
        font-size: 18px; /* Increase font size */
      }

      #myBtn:hover {
        background-color: #000000; /* Add a dark-grey background on hover */
      }
    </style>
    <meta name="msvalidate.01" content="96F26D95DFFA988F2435CDFE5595C8E6" />
  </head>
<body>
  <div class="nav">
    <%if session("username") <> "" then%>
    <div style="float:left; width: 600px; position:relative; left:0px">
    <%else%>
    <div style="float:left; width: 800px; position:relative; left:0px">
    <%end if%>
      <a href="http://172.3.226.131/index.asp"><img src="http://172.3.226.131/graphics/images/logo.bmp"></a>
    </div>
    <div>
      <a onclick="window.location.href='http://172.3.226.131/cart.asp'">Your Cart |<span id="maxSb">+</span>|</a>
      <div id="myDIV" style="text-align:center;border:1px solid #a0a0a0;display:none;z-index:2;position:absolute;top:20px;left:640px;background-color:white;color:black;width:260px;height:540px">
<%
    dim oConnectio

    dim oRi

    sConnectio = "Dsn=odbc1;Integrated Security=True"

    set oConnectio = server.createobject("ADODB.Connection")

    oConnectio.Open "odbc1","sa","coppersink21"

    dim carid

    carid = session("cartid")

    dim str

    if isnull(carid) then

      str = "SELECT cid AS id FROM cart order by cid desc"

      set rs = oConnection.Execute(str)

      if not rs.eof then
        carid = rs("id")
      else
        carid = "1"
      end if

      session("cartid") = carid

    end if

    if carid <> "" then

        str = "SELECT a.*, s.* FROM cart a INNER JOIN products s ON a.itemid = s.itemid WHERE a.cid = " & carid

        set oRi = oConnectio.execute(str)

        dim tt

        tt = 0.00

        while not oRi.eof

            tt = tt + (100.00 - cdbl(oRi("discount")))*cdbl(oRi("price"))/100

            oRi.movenext

        wend

        %>
        <br><br>SubTotal: $<%=tt%><br><br><br>
        UPS Ground: $20<br><br><br>
        Total: $<%=tt+20%><br><br><br>
        <a href='http://172.3.226.131/buy.asp?t=<%=tt%>'><button style="width:150px; height:40px;">Checkout</button></a><br><br><br>
        <a href='http://172.3.226.131/cart.asp'><button style="width:150px; height:40px;">See in Details</button></a><br><br>
        <img src="http://172.3.226.131/graphics/images/cards.png" width="100"><br><br>
        <img src="http://172.3.226.131/graphics/images/shipping.png">
        <%


    end if

%>
      </div>
    </div>
  </div>
  <div style="float:left; width:100%;position:relative;left:100px;top:20px">
    <form method="get" action="shopresults.asp">
      <span style="font-size:20px"><img src="http://172.3.226.131/graphics/images/searchglass.png" width="50" height="40">Search: </span> <input type="text" name="query" id="searchbar" style="background-color:white;color:#22b14c;font-family:arial;font-size:18px;" value="[Type a keyword...]" onclick="this.value=''"> <input type="submit" value="Search Items">
    </form>
  </div>
  <script>

function myFunction() {
  var x = document.getElementById("myDIV");
  var y = document.getElementById("maxSb");
  if (x.style.display == "none") {
    x.style.display = "block";
    y.innerHTML = "-";
  } else {
    x.style.display = "none";
    y.innerHTML = "+";
  }
}

  </script>
  <div class="menu" style="float:left">
    <!--<div class="menuitem"><a href="/shop.asp">Home</a></div>-->
    <div class="menuitem"><a href="http://172.3.226.131/categories.asp">Shop</a></div>
    <div class="menuitem"><a href="http://172.3.226.131/about.asp">About priceBay</a></div>
    <div class="menuitem"><a href="http://172.3.226.131/buyproducts.asp">Buy</a></div>
    <div class="menuitem"><a href="http://172.3.226.131/sell.asp">Sell</a></div>
    <%if session("username") <> "" then%>
    <%else%>
    <div class="menuitem"><a href="http://172.3.226.131/signup.asp"><nobr>Sign Up</nobr></a></div>
    <div class="menuitem"><a href="http://172.3.226.131/login.asp">Sign In</a></div>
    <%end if%>
    <div class="menuitem"><a href="http://172.3.226.131/faq.asp">FAQ</a></div>
    <div class="menuitem"><a href="http://172.3.226.131/contact.asp">Contact & Map</a></div>
    <p>
        <br>
    </p>
    <p style="height:10px">
        &nbsp;
    </p>
  </div>
  <h1>&nbsp;</h1>
  <h1>&nbsp;</h1>
  <div style="position:relative;left:100px">
<%
  if session("username") <> "" then
    Response.Write "Hi <a href=""/orders.asp""><u>" & session("username") & "</u></a>, welcome! <a href='http://172.3.226.131/logout.asp'><span style='color:green'>Logout</span></a>"
  else
    Response.Write "Hi stranger, <a href=""http://172.3.226.131/login.asp""><u>Sign in</u></a>"
  end if
%>
  </div>

   <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button> 

<div class="tos">
    <div class="shoptitle">
      <span style="font-size:26"><a href="shop.asp">Thank You</a></span>
    </div>
    <p>
      &nbsp;
    </p>
    <div style="width:650px">
      <%
        dim price, itemid
        
        price = session("price")
        
        itemid = session("itemid")

    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"
    
    dim sqlstr

    sqlstr = "INSERT INTO paypal_order (username, price) VALUES ('"&session("username")&"',"&price&")"

    oConnection.Execute(sqlstr)

    sqlstr = "SELECT * FROM paypal_order ORDER BY id DESC"

    set rs = oConnection.Execute(sqlstr)

    if not rs.eof then

      dim oid

      oid = rs("id")

      sqlstr = "INSERT INTO paypal_orderitems (orderid, itemid) VALUES ('"&oid&"',"&itemid&")"

      oConnection.Execute(sqlstr)

      sqlstr = "DELETE FROM sellproducts WHERE id = " & itemid

      oConnection.Execute(sqlstr)

    end if
      %>
      Your order was received.  Amount: $<%=price%>.  Item ID: <%=itemid%>.  Thank you for doing business with us.  A receipt email has been sent to you and your purchase will be processed shortly.  Within 1~2 business days your order will be processed, then shipped using UPS Ground shipping.
    </div>
    <p>
      &nbsp;
    </p>
    <div style="width:650px">
      <a href="http://172.3.226.131/index.asp">Continue shopping with us.</a>
    </div>
</div>
  <h1>&nbsp;</h1>
  <h1>&nbsp;</h1>
  <h1>&nbsp;</h1>
  <h1>&nbsp;</h1>
  <div class="footer" style="border:1px solid gray;position:relative;top:150px;left:-200px;width:1650px;height:240px;">
  <div style="position:absolute;left:300px;">
    <br><br><br>
    <a href="http://172.3.226.131/termsOfService.asp">Terms Of Service</a> | 
    <a href="http://172.3.226.131/shop.asp">Shop With Us</a> | 
    <a href="http://172.3.226.131/categories.asp">See Categories</a> |
    <a href="http://172.3.226.131/about.asp">About priceBay</a> |
    <a href="http://172.3.226.131/buyProducts.asp">Buy</a> |
    <a href="http://172.3.226.131/sell.asp">Sell</a>
    <%if session("username") <> "" then%>
    | <a href="http://172.3.226.131/orders.asp">Your Orders</a>
    <%else%>
    | <a href="http://172.3.226.131/signUp.asp">Sign Up</a>
    | <a href="http://172.3.226.131/logIn.asp">Sign In</a>
    <%end if%>
    | <a href="http://172.3.226.131/contact.asp">Contact</a>
    <br><br>
    Copyright &copy; 2019 <a href="http://172.3.226.131/shop.asp">priceBay Inc.</a> All Rights Reserved
    <br><br>
    <a href="https://www.freewebsubmission.com"><b>FreeWebSubmission.com</b></a> 
  </div>
  </div>
</body>
</html>