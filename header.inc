<%
'openssl pkcs12 -export -out "certificate_combined.pfx" -inkey "private.key" -in "certificate.crt" -certfile ca_bundle.crt'
dim oConnection

sConnection = "Dsn=odbc1;Integrated Security=True"

set oConnection = server.createobject("ADODB.Connection")

oConnection.Open "odbc2","sa","coppersink21"
%>
<html>
  <title>
    The Official Website Of Price Bay
  </title>
  <head>
<link rel="stylesheet" href="bootstrap.css" rel="stylesheet">
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
    		    color:#000;
            background-color: #ffffff;
            height:100%;
    	  }
        a {
            text-decoration: none;
            color:#777;
        }
        a:hover {
          text-decoration: none;
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
            top:-125px;
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
        position:relative;
        top:-140px;
            margin-top:10px;
            font-size:18px;
        		float:left;
        		height:45px;
        		text-align: center;
    	}
      a:hover {
          color:#000;
          height:25px;
          width:120px;
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
        border: 1px solid black; /* Remove borders */
        outline: none; /* Remove outline */
        background-color: #ccffcc; /* Set a background color */
        color: #000; /* Text color */
        cursor: pointer; /* Add a mouse pointer on hover */
        padding: 15px; /* Some padding */
        border-radius: 15px; /* Rounded corners */
        font-size: 18px; /* Increase font size */
      }

      #myBtn:hover {
        color:black;
        background-color: green;
      }
    </style>
  </head>
<body>
  <div style="width:1300px;height:150px;background-color:#ddd;margin-bottom:70px;position:relative;top:-10px">
<%
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

    dim countcart

    countcart = 0

    if carid <> "" then

        dim oRi

        str = "SELECT a.*, s.* FROM cart a INNER JOIN products s ON a.itemid = s.itemid WHERE a.cid = " & carid

        set oRi = oConnection.execute(str)

        dim tt

        tt = 0.00

        while not oRi.eof

            oRi.movenext

            countcart = countcart + 1

        wend

    end if

%>
  <div style="float:right; width:100%;position:relative;left:384px;top:70px">
    <form method="get" action="shopresults.asp">
      <span style="font-size:20px;position:relative;top:-13px"><!--<img src="/graphics/images/searchglass.png" width="50" height="40">-->Search </span> <input type="text" name="query" id="searchbar" style="font-family:arial;background-color:#eee;font-size:14px;width:350px;height:30px;position:relative;top:-13px" onclick="this.value=''"> <input type="image" src="/graphics/images/s.png" border="0" name="submit" style="height:31px;width:120px;position:relative;top:-20px">
      <a href="cart.asp" style="position:relative;top:-20px"><img src="/graphics/images/carts.png" width="70" height="70"></a>
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
<style>
.navbar .popover {
width: 700px;
-webkit-border-top-left-radius: 0px;
-webkit-border-bottom-left-radius: 0px;
border-top-left-radius: 0px;
border-bottom-left-radius: 0px;
overflow: hidden;
}
.navbar .popover-content {
text-align: center;
width: 700px;
}
.navbar .popover-content img {
height: 212px;
max-width: 450px;
}
.navbar .dropdown-menu {
-webkit-border-top-right-radius: 0px;
-webkit-border-bottom-right-radius: 0px;
border-top-right-radius: 0px;
border-bottom-right-radius: 0px;
-webkit-box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.2);
-moz-box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.2);
box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.2);
width:600px;
}
.navbar .dropdown-menu > li > a:hover {
background-image: none;
color: white;
background-color: rgb(0, 129, 194);
background-color: rgba(0, 129, 194, 0.5);
width:400px;
}
.navbar .dropdown-menu > li > a.maintainHover {
color: white;
background-color: #0081C2;
width:400px;
}
</style>
  <div class="menu" style="float:left;position:relative;top:80px">
<style>
    .styled1 {
    border: 0;
    line-height: 2.5;
    padding: 0 20px;
    font-size: 1rem;
    text-align: right;
    color: green;
    text-shadow: 1px 1px 1px #000;
    border-radius: 10px;
    background-color: rgba(230, 230, 230, 1);
    background-image: linear-gradient(to top left,
                                      rgba(0, 0, 0, .2),
                                      rgba(0, 0, 0, .2) 30%,
                                      rgba(0, 0, 0, 0));
    box-shadow: inset 2px 2px 3px rgba(255, 255, 255, .6),
                inset -2px -2px 3px rgba(0, 0, 0, .6);
}

.styled1:hover {
    background-color: rgba(220, 220, 220, 1);
}

.styled1:active {
    box-shadow: inset -2px -2px 3px rgba(0, 0, 0, .6),
                inset 2px 2px 3px rgba(0, 0, 0, .6);
}

    .styled {
    border: 0;
    line-height: 2.5;
    padding: 0 20px;
    font-size: 1rem;
    text-align: center;
    color: green;
    text-shadow: 1px 1px 1px #000;
    border-radius: 10px;
    background-color: rgba(181, 230, 29, 1);
    background-image: linear-gradient(to top left,
                                      rgba(0, 0, 0, .2),
                                      rgba(0, 0, 0, .2) 30%,
                                      rgba(0, 0, 0, 0));
    box-shadow: inset 2px 2px 3px rgba(255, 255, 255, .6),
                inset -2px -2px 3px rgba(0, 0, 0, .6);
}

.styled:hover {
    background-color: rgba(220, 0, 0, 1);
}

.styled:active {
    box-shadow: inset -2px -2px 3px rgba(0, 0, 0, .6),
                inset 2px 2px 3px rgba(0, 0, 0, .6);
}
</style>
    <!--<div class="menuitem"><a href="/shop.asp">Home</a></div>-->
    <div style="float:left; width: 250px; position:relative; left:44px;top:-140px">
      <a href="/shop.asp"><img src="/graphics/images/logo.png"></a>
    </div>
    <div class="menuitem" style="float:left;position:relative;left:-40px">
<div class="nav-collapse collapse">
<ul style="list-style-type: none; position:relative; left:24px;">
<li class="active"> 

  <a class="dropdown-toggle" data-toggle="dropdown" style="color:black">Shop... <img src="/graphics/images/downs.png"></a>
<!--
                  jQuery-menu-aim: this <ul> defines the dropdown main menu and its contents.
                  This is just one of many possible examples for defining the menu's HTML.
                  jQuery-menu-aim is agnostic to your HTML structure, it only fires events to
                  be used as you please.
                -->
<ul class="dropdown-menu" role="menu" style="width:200px;text-align:left">
<li data-submenu-id="submenu-all"> <a href="shopcategories.asp?category=all#shophere">All</a> 
<!--
                          jQuery-menu-aim: each class="popover" div defines submenu content. There are a million
                          and one ways to do this, places to structure the HTML, etc. This is just one example.
                          jQuery-menu-aim is agnostic to your HTML structure, it only fires events to be used
                          as you please.
                        -->
<div id="submenu-all-1" class="popover">
<h3 class="popover-title">All</h3>
<div class="popover-content"></div>
</div>
</li>
<li data-submenu-id="submenu-fashion"> <a onmouseout="document.getElementById('submenu-fashion-1').style.display='none'" onmouseover="document.getElementById('submenu-fashion-1').style.display=''" href="shopcategories.asp?category=fashion#shophere">
Fashion</a>
<div id="submenu-fashion-1" style="display:none">
<h3 class="popover-title">Fashion</h3>
<div class="popover-content"><img src="/graphics/images/fashion-20-off.png"></div>
</div>
</li>
<li data-submenu-id="submenu-kitchen"> <a onmouseout="document.getElementById('submenu-kitchen-1').style.display='none'" onmouseover="document.getElementById('submenu-kitchen-1').style.display=''" href="shopcategories.asp?category=kitchen#shophere">Kitchen</a>
<div id="submenu-kitchen-1" style="display:none">
<h3 class="popover-title">kitchen</h3>
<div class="popover-content"><img src="/graphics/images/kitchen-upto-50-off.png"></div>
</div>
</li>
<li data-submenu-id="submenu-software"> <a onmouseout="document.getElementById('submenu-software-1').style.display='none'" onmouseover="document.getElementById('submenu-software-1').style.display=''" href="shopcategories.asp?category=software#shophere">Software</a>
<div id="submenu-software-1" style="display:none">
<h3 class="popover-title">Software</h3>
<div class="popover-content"><img src="/graphics/images/software.png"></div>
</div>
</li>
<li data-submenu-id="submenu-computer"> <a onmouseout="document.getElementById('submenu-computer-1').style.display='none'" onmouseover="document.getElementById('submenu-computer-1').style.display=''" href="shopcategories.asp?category=computer#shophere">Computer</a>
<div id="submenu-computer-1" style="display:none">
<h3 class="popover-title">Computer</h3>
<div class="popover-content"><img src="/graphics/images/computers.png"></div>
</div>
</li>
<li data-submenu-id="submenu-other"> <a onmouseout="document.getElementById('submenu-other-1').style.display='none'" onmouseover="document.getElementById('submenu-other-1').style.display=''" href="shopcategories.asp?category=misc#shophere">Miscellaneous</a>
<div id="submenu-other-1" style="display:none">
<h3 class="popover-title">Miscellaneous</h3>
<div class="popover-content"><img src="/graphics/images/otheritems.png"></div>
</div>
</li>
<li data-submenu-id="submenu-motors"> <a onmouseout="document.getElementById('submenu-motors-1').style.display='none'" onmouseover="document.getElementById('submenu-motors-1').style.display=''" href="shopcategories.asp?category=motors#shophere">Motors</a>
<div id="submenu-motors-1" style="display:none">
<h3 class="popover-title">Motors</h3>
<div class="popover-content"><img src="/graphics/images/motors.png"></div>
</div>
</li>
<li data-submenu-id="submenu-electronics"> <a onmouseout="document.getElementById('submenu-electronics-1').style.display='none'" onmouseover="document.getElementById('submenu-electronics-1').style.display=''" href="shopcategories.asp?category=electronics#shophere">Electronics</a>
<div id="submenu-electronics-1" style="display:none">
<h3 class="popover-title">Electronics</h3>
<div class="popover-content"><img src="/graphics/images/electronics.png"></div>
</div>
</li>
<li data-submenu-id="submenu-collectibles"> <a onmouseout="document.getElementById('submenu-collectibles-1').style.display='none'" onmouseover="document.getElementById('submenu-collectibles-1').style.display=''" href="shopcategories.asp?category=collectibles#shophere">Collectibles & Art</a>
<div id="submenu-collectibles-1" style="display:none">
<h3 class="popover-title">Collectibles & Art</h3>
<div class="popover-content"><img src="/graphics/images/collectibles.png"></div>
</div>
</li>
<li data-submenu-id="submenu-home"> <a onmouseout="document.getElementById('submenu-home-1').style.display='none'" onmouseover="document.getElementById('submenu-home-1').style.display=''" href="shopcategories.asp?category=home#shophere">Home & Garden</a>
<div id="submenu-home-1" style="display:none">
<h3 class="popover-title">Home</h3>
<div class="popover-content"><img src="/graphics/images/homeandgarden.png"></div>
</div>
</li>
<li data-submenu-id="submenu-sporting"> <a onmouseout="document.getElementById('submenu-sporting-1').style.display='none'" onmouseover="document.getElementById('submenu-sporting-1').style.display=''" href="shopcategories.asp?category=sporting#shophere">Sporting Goods</a>
<div id="submenu-sporting-1" style="display:none;">
<h3 class="popover-title">Sporting Goods</h3>
<div class="popover-content"><img src="/graphics/images/sgoods.png"></div>
</div>
</li>
<li data-submenu-id="submenu-toys"> <a onmouseout="document.getElementById('submenu-toys-1').style.display='none'" onmouseover="document.getElementById('submenu-toys-1').style.display=''" href="shopcategories.asp?category=toys#shophere">Toys</a>
<div id="submenu-toys-1" style="display:none">
<h3 class="popover-title">Toys</h3>
<div class="popover-content"><img src="/graphics/images/toys.png"></div>
</div>
</li>
<li data-submenu-id="submenu-business"> <a onmouseout="document.getElementById('submenu-business-1').style.display='none'" onmouseover="document.getElementById('submenu-business-1').style.display=''" href="shopcategories.asp?category=business#shophere">Business & Industrial</a>
<div id="submenu-business-1" style="display:none">
<h3 class="popover-title">Business</h3>
<div class="popover-content"><img src="/graphics/images/bindustrial.png"></div>
</div>
</li>
<li data-submenu-id="submenu-music"> <a onmouseout="document.getElementById('submenu-music-1').style.display='none'" onmouseover="document.getElementById('submenu-music-1').style.display=''" href="shopcategories.asp?category=music#shophere">Music</a>
<div id="submenu-music-1" style="display:none">
<h3 class="popover-title">Music</h3>
<div class="popover-content"><img src="/graphics/images/music.png"></div>
</div>
</li>
<li data-submenu-id="submenu-deals"> <a onmouseout="document.getElementById('submenu-deals-1').style.display='none'" onmouseover="document.getElementById('submenu-deals-1').style.display=''" href="shopcategories.asp?category=deals#shophere">Deals</a>
<div id="submenu-deals-1" style="display:none">
<h3 class="popover-title">Deals</h3>
<div class="popover-content"><img src="/graphics/images/deals.png"></div>
</div>
</li>
<li data-submenu-id="submenu-under10"> <a onmouseout="document.getElementById('submenu-under10-1').style.display='none'" onmouseover="document.getElementById('submenu-under10-1').style.display=''" href="shopcategories.asp?category=under10#shophere">Under $10</a>
<div id="submenu-under10-1" style="display:none">
<h3 class="popover-title">Under $10</h3>
<div class="popover-content"><img src="/graphics/images/under10.png"></div>
</div>
</li>
<li data-submenu-id="submenu-beauty"> <a onmouseout="document.getElementById('submenu-beauty-1').style.display='none'" onmouseover="document.getElementById('submenu-beauty-1').style.display=''" href="shopcategories.asp?category=beauty#shophere">Beauty</a>
<div id="submenu-beauty-1" style="display:none">
<h3 class="popover-title">Beauty</h3>
<div class="popover-content"><img src="/graphics/images/beauty.png"></div>
</div>
</li>
<li data-submenu-id="submenu-personal"> <a onmouseout="document.getElementById('submenu-personal-1').style.display='none'" onmouseover="document.getElementById('submenu-personal-1').style.display=''" href="shopcategories.asp?category=personal#shophere">Personal Care</a>
<div id="submenu-personal-1" style="display:none">
<h3 class="popover-title">Personal Care</h3>
<div class="popover-content"><img src="/graphics/images/personalcare.png"></div>
</div>
</li>
<li data-submenu-id="submenu-jewelry"> <a onmouseout="document.getElementById('submenu-jewelry-1').style.display='none'" onmouseover="document.getElementById('submenu-jewelry-1').style.display=''" href="shopcategories.asp?category=jewelry#shophere">Jewelry</a>
<div id="submenu-jewelry-1" style="display:none">
<h3 class="popover-title">Jewelry</h3>
<div class="popover-content"><img src="/graphics/images/jewelry.png"></div>
</div>
</li>
<li data-submenu-id="submenu-handmade"> <a onmouseout="document.getElementById('submenu-handmade-1').style.display='none'" onmouseover="document.getElementById('submenu-handmade-1').style.display=''" href="shopcategories.asp?category=handmade#shophere">Handmade</a>
<div id="submenu-handmade-1" style="display:none">
<h3 class="popover-title">Handmade</h3>
<div class="popover-content"><img src="/graphics/images/handmade.png"></div>
</div>
</li>
<li data-submenu-id="submenu-travel"> <a onmouseout="document.getElementById('submenu-travel-1').style.display='none'" onmouseover="document.getElementById('submenu-travel-1').style.display=''" href="shopcategories.asp?category=travel#shophere">Travel</a>
<div id="submenu-travel-1" style="display:none">
<h3 class="popover-title">Travel</h3>
<div class="popover-content"><img src="/graphics/images/travel.png"></div>
</div>
</li>
<li data-submenu-id="submenu-office"> <a onmouseout="document.getElementById('submenu-office-1').style.display='none'" onmouseover="document.getElementById('submenu-office-1').style.display=''" href="shopcategories.asp?category=office#shophere">Office Products</a>
<div id="submenu-office-1" style="display:none">
<h3 class="popover-title">Office Products</h3>
<div class="popover-content"><img src="/graphics/images/op.png"></div>
</div>
</li>
<li data-submenu-id="submenu-pet"> <a onmouseout="document.getElementById('submenu-pet-1').style.display='none'" onmouseover="document.getElementById('submenu-pet-1').style.display=''" href="shopcategories.asp?category=pet#shophere">Pet Supplies</a>
<div id="submenu-pet-1" style="display:none">
<h3 class="popover-title">Pet Supplies</h3>
<div class="popover-content"><img src="/graphics/images/pet.png"></div>
</div>
</li>
<li data-submenu-id="submenu-appliances"> <a onmouseout="document.getElementById('submenu-appliances-1').style.display='none'" onmouseover="document.getElementById('submenu-appliances-1').style.display=''" href="shopcategories.asp?category=appliances#shophere">Appliances</a>
<div id="submenu-appliances-1" style="display:none">
<h3 class="popover-title">Appliances</h3>
<div class="popover-content"><img src="/graphics/images/app.png"></div>
</div>
</li>
</ul>
</li>
</ul>
</div>
</div>

<script src="jquery-1.9.1.min.js"></script> 
<script src="bootstrap.min.js"></script> 
<script>

        var $menu = $(".dropdown-menu");

        // jQuery-menu-aim: <meaningful part of the example>
        // Hook up events to be fired on menu row activation.
        $menu.menuAim({
            activate: activateSubmenu,
            deactivate: deactivateSubmenu
        });
        // jQuery-menu-aim: </meaningful part of the example>

        // jQuery-menu-aim: the following JS is used to show and hide the submenu
        // contents. Again, this can be done in any number of ways. jQuery-menu-aim
        // doesn't care how you do this, it just fires the activate and deactivate
        // events at the right times so you know when to show and hide your submenus.
        function activateSubmenu(row) {
            var $row = $(row),
                submenuId = $row.data("submenuId"),
                $submenu = $("#" + submenuId),
                height = $menu.outerHeight(),
                width = $menu.outerWidth();

                $submenu.style.display = "";


            // Show the submenu
            $submenu.css({
                display: "block",
                top: -1,
                left: 300,  // main should overlay submenu
                height: 300  // padding for main dropdown's arrow
            });

            // Keep the currently activated row's highlighted look
            $row.find("a").addClass("maintainHover");
        }

        function deactivateSubmenu(row) {
            var $row = $(row),
                submenuId = $row.data("submenuId"),
                $submenu = $("#" + submenuId);

            // Hide the submenu and remove the row's highlighted look
            $submenu.css("display", "none");
            $row.find("a").removeClass("maintainHover");
        }

        $(document).click(function() {
            // Simply hide the submenu on any click. Again, this is just a hacked
            // together menu/submenu structure to show the use of jQuery-menu-aim.
            $(".popover").css("display", "none");
            $("a.maintainHover").removeClass("maintainHover");
        });

    </script>
    <div class="menuitem" onclick="window.location.href='/about.asp'">
      <button class="favorite styled"
              type="button">
            <a href="/about.asp" style="color:white">What is Price Bay?</a>
      </button>&nbsp;
    </div>&nbsp;
    <div class="menuitem" onclick="window.location.href='/newarrivals.asp'">
      <button class="favorite styled"
              type="button">
            <a href="/newarrivals.asp" style="color:white">New Arrivals</a>
      </button>&nbsp;
    </div>&nbsp;
    <div class="menuitem" onclick="window.location.href='/bestsellers.asp'">
      <button class="favorite styled"
              type="button">
            <a href="/bestsellers.asp" style="color:white">Best Sellers</a>
      </button>&nbsp;
    </div>&nbsp;
    <div class="menuitem" onclick="window.location.href='/buyproducts.asp'">
      <button class="favorite styled"
              type="button">
            <a href="/buyproducts.asp" style="color:white">Bid</a>
      </button>&nbsp;
    </div>&nbsp;
    <div class="menuitem" onclick="window.location.href='/sell.asp'">
      <button class="favorite styled"
              type="button">
            <a href="/sell.asp" style="color:white">Sell</a>
      </button>&nbsp;
    </div>&nbsp;
    <div class="menuitem" onclick="window.location.href='/testimonials.asp'">
      <button class="favorite styled"
              type="button">
            <a href="/testimonials.asp" style="color:white">Testimonials</a>
      </button>&nbsp;
    </div>&nbsp;
    <div class="menuitem" onclick="window.location.href='/contact.asp'">
      <button class="favorite styled"
              type="button">
            <a href="/contact.asp" style="color:white">Contact Us</a>
      </button>&nbsp;
    </div>&nbsp;
    <p>
        <br>
    </p>
    <p style="height:10px">
        &nbsp;
    </p>
  </div>

  <h1>&nbsp;</h1>
  <h1>&nbsp;</h1>
      <%
      dim category

      category = request.querystring("category")

      if category = "" then
        category = "all"
      end if
      %>

  <div style="width:100%;float:left;">
  <div style="position:relative;left:112px;top:-80px">
<%
  if session("username") <> "" then
    Response.Write "Hi <a href=""/orders.asp""><u>" & session("username") & "</u></a>. Welcome <a href='logout.asp'><span style='color:green'>Sign Out</span></a>"
  else
    Response.Write "Hi. <a href=""/login.asp""><u>Sign in</u></a> or <a href=""/signup.asp""><u>Sign up</u></a>"
  end if
%>
  <br>
  <div style="font-size:13px;position:relative;top:-5px;z-index:1">
    <br>
<a href="shopcategories.asp?category=fashion">Fashion</a> | <a href="shopcategories.asp?category=kitchen">kitchen</a> | <a href="shopcategories.asp?category=software">Software</a> | <a href="shopcategories.asp?category=computer">Computer</a> | <a href="shopcategories.asp?category=misc">Miscellaneous</a> | <a href="shopcategories.asp?category=motors">Motors</a> | <a href="shopcategories.asp?category=electronics">Electronics</a> | <a href="shopcategories.asp?category=collectibles">Collectibles & Art</a> | <a href="shopcategories.asp?category=home">Home & Garden</a> | <a href="shopcategories.asp?category=sporting">Sporting Goods</a> | <a href="shopcategories.asp?category=toys">Toys</a> | <a href="shopcategories.asp?category=business">Business & Industrial</a> | <a href="shopcategories.asp?category=music">Music</a> | <a href="shopcategories.asp?category=deals">Deals</a> | <a href="shopcategories.asp?category=under10">Under $10</a> | <a href="shopcategories.asp?category=all">More</a>
<br>
  </div>
  </div>

  </div>
</div>

   <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button> 