  <!-- #include file="inc/header.inc" -->
  <div class="sell" style="position:relative;left:300px;top:-50px">
  
    <div class="shoptitle" style="position:relative;left:-170px;top:0px">
      <span style="font-size:36">Selling on priceBay</span>
    </div>

<div class="l-whyebay__wrapper" style="position:relative; left:-400px;"><h2 class="l-whyebay__title" tabindex="0">priceBay is a vibrant online marketplace. There's no equal.</h2><h3 class="l-whyebay__subtitle">You want millions of people all over the world to see what you're selling? You're in the right place.</h3><ul class="l-whyebay__tiles"><li class="l-whyebay__tile"><div class="l-whyebay__tile-image-wrapper"><img data-src="https://ir.ebaystatic.com/pictures/aw/sell/lnd/graphic_intro_shoes_1x.png" data-alt="" alt="A pair of shoes sells" class="l-whyebay__tile-image unveil-loaded l-lazyload-image" role="" src="Selling%20on%20eBay%20%20%20Electronics,%20Fashion,%20Home%20&amp;%20Garden%20%20%20eBay_files/graphic_intro_shoes_1x.png"></div><div style="float:left" class="l-whyebay__tile-caption">A pair of shoes sells now<span></span></div></li><li class="l-whyebay__tile"><div class="l-whyebay__tile-image-wrapper"><img data-src="https://ir.ebaystatic.com/pictures/aw/sell/lnd/graphic_intro_handbags_1x.png" data-alt="" alt="A women's handbag sells" class="l-whyebay__tile-image unveil-loaded l-lazyload-image" role="" src="Selling%20on%20eBay%20%20%20Electronics,%20Fashion,%20Home%20&amp;%20Garden%20%20%20eBay_files/graphic_intro_handbags_1x.png"></div><div style="float:left" class="l-whyebay__tile-caption">A women's handbag sells now<span></span></div></li><li class="l-whyebay__tile"><div class="l-whyebay__tile-image-wrapper"><img data-src="https://ir.ebaystatic.com/pictures/aw/sell/lnd/graphic_intro_phones_1x.png" data-alt="" alt="A cell phone sells" class="l-whyebay__tile-image unveil-loaded l-lazyload-image" role="" src="Selling%20on%20eBay%20%20%20Electronics,%20Fashion,%20Home%20&amp;%20Garden%20%20%20eBay_files/graphic_intro_phones_1x.png"></div><div style="float:left" class="l-whyebay__tile-caption">A cell phone sells now<span></span></div></li>
<li class="l-whyebay__tile"><div class="l-whyebay__tile-image-wrapper"><img data-src="https://ir.ebaystatic.com/pictures/aw/sell/lnd/graphic_intro_phones_1x.png" data-alt="" alt="A cell phone sells" class="l-whyebay__tile-image unveil-loaded l-lazyload-image" role="" src="Selling%20on%20eBay%20%20%20Electronics,%20Fashion,%20Home%20&amp;%20Garden%20%20%20eBay_files/software.png"></div><div style="float:left" class="l-whyebay__tile-caption">Software sells now</div></li>
</ul>
  
<div class="l-b2c__title">If you're ready... all you need is a paypal account</div>
<img src="/graphics/images/ppez.png">
<p>&nbsp;</p>
<%
dim username

username = session("username")

if username = "" then
%>
<a href="login.asp"><button onclick="window.login.href='login.asp'" style="width: 200px; height:60px">Sign In</button></a> to get your product listed.
<%
else
%>
<a href="sellitem_upload.asp"><button onclick="window.login.href='sellitem_upload.asp'" style="width: 200px; height:60px">Sell an item</button></a>
<%
end if
%>

    <!-- #include file="inc/footer.inc" -->
