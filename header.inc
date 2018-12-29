<html>
  <head>
    <style>
    	body {
    		font-family: Tahoma;
    		color:#626262;
            background-color: #fff;
    	}
        a {
            text-decoration: none;
            color:#a2a2a2;
        }
        .signup {
            position:relative;
            top:-20px;
            bottom:30px;
            left:100px;
        }
        .login {
            position:relative;
            top:-20px;
            bottom:30px;
            left:100px;
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
            left:477px;
        }
        .shop {
            position:relative;
            top:30px;
            left:100px;
        }
    	.footer {
    		position:relative;
    		top:200px;
    		left:100px;
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
    		width:1000px;
    	}
    	.about {
            font-family:verdana;
    		position:relative;
    		top:0px;
    		left:100px;
    		width:500px;
    		height:100px;
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
            float:left;
            height:25px;
            width:120px;
            text-align: center;
        }
    </style>
  </head>
<body>
  <div class="nav">
    <div>
      <a href="/index.asp"><img src="/graphics/images/logo.bmp"></a>

      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <a style="position:relative; top:-30px;left:200px" href="/cart.asp"><span style="color:#0000ff"></span><img src="/graphics/images/cart.png"></a>

    </div>
  </div>
  <div class="menu">
    <div class="menuitem"><a href="/shop.asp">Shop All</a></div>
    <div class="menuitem"><a href="/categories.asp">Category</a></div>
    <div class="menuitem"><a href="/about.asp">What is pBay?&nbsp;</a></div>
    <%if session("username") <> "" then%>
    <%else%>
    <div class="menuitem"><a href="/signup.asp"><nobr>Sign Up</nobr></a></div>
    <div class="menuitem"><a href="/login.asp">Sign In</a></div>
    <%end if%>
    <p>
        <br>
    </p>
    <!--<img src="/graphics/images/wallpaper.png">-->
    <p style="height:10px">
        &nbsp;
    </p>
  </div>
  <br>
<%
  if session("username") <> "" then
    Response.Write "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""/orders.asp""><u>" & session("username") & "</u></a>, welcome! <a href='logout.asp'><span style='color:green'>Logout</span></a>"
  end if
%>