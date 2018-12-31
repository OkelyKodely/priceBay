  <!-- #include file="inc/header.inc" -->
  <div class="shop">
  
    <div class="shoptitle">
      <span style="font-size:26">Sell</span>
    </div>

<div class="l-whyebay__wrapper" style="position:relative; left:-200px;"><h2 class="l-whyebay__title" tabindex="0">pBay is a vibrant worldwide marketplace. There's no equal.</h2><h3 class="l-whyebay__subtitle">You want millions of people all over the world to see what you're selling? You're in the right place.</h3><ul class="l-whyebay__tiles"><li class="l-whyebay__tile"><div class="l-whyebay__tile-image-wrapper"><img data-src="https://ir.ebaystatic.com/pictures/aw/sell/lnd/graphic_intro_shoes_1x.png" data-alt="" alt="A pair of shoes sells" class="l-whyebay__tile-image unveil-loaded l-lazyload-image" role="" src="Selling%20on%20eBay%20%20%20Electronics,%20Fashion,%20Home%20&amp;%20Garden%20%20%20eBay_files/graphic_intro_shoes_1x.png"></div><div style="float:left" class="l-whyebay__tile-caption">A pair of shoes sells<span></span></div></li><li class="l-whyebay__tile"><div class="l-whyebay__tile-image-wrapper"><img data-src="https://ir.ebaystatic.com/pictures/aw/sell/lnd/graphic_intro_handbags_1x.png" data-alt="" alt="A women's handbag sells" class="l-whyebay__tile-image unveil-loaded l-lazyload-image" role="" src="Selling%20on%20eBay%20%20%20Electronics,%20Fashion,%20Home%20&amp;%20Garden%20%20%20eBay_files/graphic_intro_handbags_1x.png"></div><div style="float:left" class="l-whyebay__tile-caption">A women's handbag sells<span></span></div></li><li class="l-whyebay__tile"><div class="l-whyebay__tile-image-wrapper"><img data-src="https://ir.ebaystatic.com/pictures/aw/sell/lnd/graphic_intro_phones_1x.png" data-alt="" alt="A cell phone sells" class="l-whyebay__tile-image unveil-loaded l-lazyload-image" role="" src="Selling%20on%20eBay%20%20%20Electronics,%20Fashion,%20Home%20&amp;%20Garden%20%20%20eBay_files/graphic_intro_phones_1x.png"></div><div style="float:left" class="l-whyebay__tile-caption">A cell phone sells<span></span></div></li>
<li class="l-whyebay__tile"><div class="l-whyebay__tile-image-wrapper"><img data-src="https://ir.ebaystatic.com/pictures/aw/sell/lnd/graphic_intro_phones_1x.png" data-alt="" alt="A cell phone sells" class="l-whyebay__tile-image unveil-loaded l-lazyload-image" role="" src="Selling%20on%20eBay%20%20%20Electronics,%20Fashion,%20Home%20&amp;%20Garden%20%20%20eBay_files/software.png"></div><div style="float:left" class="l-whyebay__tile-caption">Software sells<span></span></div></li>
</ul>
  </div>
  
<div class="l-b2c__wrapper" tyle="position:relative; left:-200px"><div class="l-b2c__valign"><div class="l-b2c__title">Selling professionally?</div><div class="l-b2c__title2">We make it easy.</div><div class="l-b2c__body" style="width:100%">If
 you have a business, or just want to run your pBay life like one, we've
 got powerful tools to help you manage your inventory and orders, track 
your sales and build your brand.</div><div class="l-b2c__img" style="position:relative;top:-30px"></div><section id="fees" class="l-fees hero__ariaHidden" style=""><div class="l-fees__wrapper"><br><h2 class="l-fees__title">Huge selling power for a very small fee.</h2><div class="l-fees__subtitle" style="width:300px">It
 doesn't cost a thing to list up items, and you only pay 
after your stuff sells. It's just a small percent of the money you earn.  Sell for free.</div></div>

<hr>
<%
dim username

username = session("username")

if username = "" then
%>
<a href="login.asp">Sign In</a> to get your product listed.
<%
else
%>
<a href="sellitem_upload.asp">Sell Item</a> now.
<%
end if
%>
  <div style="position:relative;left:200px;top:100px">
    <!-- #include file="inc/footer.inc" -->
  </div>