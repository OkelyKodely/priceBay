  <!-- #include file="inc/header.inc" -->
  <%
    dim oRS

    dim itemid

    itemid = request.querystring("itemid")
    
    sqlstr = "SELECT price,category,itemid,name,image,dsc,discount,newarrivals FROM products WHERE itemid='" & itemid & "'"

    set oRS = oConnection.Execute(sqlstr)

    if not oRS.eof then
      category = oRS("category")
    end if
  %>
  <div class="shop" style="position:relative;top:-70px">
  
    <div class="shoptitle">
      <%
      dim categoryName

      if category = "fashion" then
        categoryName = "Fashion"

      elseif category = "kitchen" then
        categoryName = "Kitchen"

      elseif category = "software" then
        categoryName = "Software"

      elseif category = "computer" then
        categoryName = "Computer"

      elseif category = "misc" then
        categoryName = "Miscellaneous"

      elseif category = "motors" then
        categoryName = "Motors"

      elseif category = "electronics" then
        categoryName = "Electronics"

      elseif category = "collectibles" then
        categoryName = "Collectibles & Art"

      elseif category = "home" then
        categoryName = "Home & Garden"

      elseif category = "sporting" then
        categoryName = "Sporting Goods"

      elseif category = "toys" then
        categoryName = "Toys"

      elseif category = "business" then
        categoryName = "Business & Industrial"

      elseif category = "music" then
        categoryName = "Music"

      elseif category = "deals" then
        categoryName = "Deals"

      elseif category = "under10" then
        categoryName = "Under 10"

      elseif category = "beauty" then
        categoryName = "Beauty"

      elseif category = "personal" then
        categoryName = "Personal Care"

      elseif category = "jewelry" then
        categoryName = "Jewelry"

      elseif category = "handmade" then
        categoryName = "Handmade"

      elseif category = "travel" then
        categoryName = "Travel"

      elseif category = "office" then
        categoryName = "Office Products"

      elseif category = "pet" then
        categoryName = "Pet Supplies"

      elseif category = "appliances" then
        categoryName = "Appliances"

      elseif category = "all" then
        categoryName = "All"

      end if
      %>
  	  <span style="font-size:26">Shop <%=categoryName%></span>
    </div>

    <p>
      &nbsp;
    </p>

    <!--<div class="categoryitems">
      <a href="categories.asp">Shop Categories</a>
    </div>-->
    <%
    dim cartid

    cartid = session("cartid")

    dim sqlstr

    if cartid = "" then

      sqlstr = "SELECT max(cid)+1 AS cid FROM Cart"

      set rs = oConnection.Execute(sqlstr)

      if not rs.eof then
        cartid = rs("cid")
      else
        cartid = 1
      end if

      session("cartid") = cartid
      
    end if

    sqlstr = "SELECT price,category,itemid,name,image,dsc,discount,newarrivals FROM products WHERE itemid='" & itemid & "'"

    set oRS = oConnection.Execute(sqlstr)

    if not oRS.eof then
      dim dsc
      dsc = oRS("dsc")
      dsc = left(dsc, 1000)
    %>
  <div id = "container" style = "width:1200px">
      <div id = "middle" style = "float:left; width: 750;">
<style>
* {box-sizing: border-box;}

.img-zoom-container {
  position: relative;
}

.img-zoom-lens {
  position: absolute;
  border: 1px solid #d4d4d4;
  /*set the size of the lens:*/
  width: 40px;
  height: 40px;
}

.img-zoom-result {
  border: 1px solid #d4d4d4;
  /*set the size of the result div:*/
  width: 300px;
  height: 300px;
}
</style>
<script>
function imageZoom(imgID, resultID) {
  var img, lens, result, cx, cy;
  img = document.getElementById(imgID);
  result = document.getElementById(resultID);
  /*create lens:*/
  lens = document.createElement("DIV");
  lens.setAttribute("class", "img-zoom-lens");
  /*insert lens:*/
  img.parentElement.insertBefore(lens, img);
  /*calculate the ratio between result DIV and lens:*/
  cx = result.offsetWidth / lens.offsetWidth;
  cy = result.offsetHeight / lens.offsetHeight;
  /*set background properties for the result DIV:*/
  result.style.backgroundImage = "url('" + img.src + "')";
  result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
  /*execute a function when someone moves the cursor over the image, or the lens:*/
  lens.addEventListener("mousemove", moveLens);
  img.addEventListener("mousemove", moveLens);
  /*and also for touch screens:*/
  lens.addEventListener("touchmove", moveLens);
  img.addEventListener("touchmove", moveLens);
  function moveLens(e) {
    var pos, x, y;
    /*prevent any other actions that may occur when moving over the image:*/
    e.preventDefault();
    /*get the cursor's x and y positions:*/
    pos = getCursorPos(e);
    /*calculate the position of the lens:*/
    x = pos.x - (lens.offsetWidth / 2);
    y = pos.y - (lens.offsetHeight / 2);
    /*prevent the lens from being positioned outside the image:*/
    if (x > img.width - lens.offsetWidth) {x = img.width - lens.offsetWidth;}
    if (x < 0) {x = 0;}
    if (y > img.height - lens.offsetHeight) {y = img.height - lens.offsetHeight;}
    if (y < 0) {y = 0;}
    /*set the position of the lens:*/
    lens.style.left = x + "px";
    lens.style.top = y + "px";
    /*display what the lens "sees":*/
    result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
  }
  function getCursorPos(e) {
    var a, x = 0, y = 0;
    e = e || window.event;
    /*get the x and y positions of the image:*/
    a = img.getBoundingClientRect();
    /*calculate the cursor's x and y coordinates, relative to the image:*/
    x = e.pageX - a.left;
    y = e.pageY - a.top;
    /*consider any page scrolling:*/
    x = x - window.pageXOffset;
    y = y - window.pageYOffset;
    return {x : x, y : y};
  }
}
</script>

<div class="img-zoom-container" style="width:100%;float:left">
  <div style="float:left">
    <p style="width:350px"><b>Name:</b> <%=oRS("name")%></p>
    <img id="myimage" src='/productitems/<%=oRS("image")%>' width="300" height="240">
  </div>
  <div style="float:left;position:relative;left:60px">
    <div id="myresult" class="img-zoom-result"></div>
    <span style="font-size:24px">Zoom</span>
  </div>
</div>
        <script>imageZoom("myimage", "myresult"); </script>
      </div>
      <div id = "right" style = "float:left; width: 350;">
        <span style="color:#000"><b>Description:</b></span>
        <%=dsc%><br><br>
        <span style="color:#ff0000"><b>Price:</b></span>
        <span style="color:#ff0000">$<%=oRS("price")%></span><br><br>
        <span style="color:#000"><b>Discount Price:</b></span>
        <b>$<%=(100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100%></b><br><br>
        <form method="post" action="cart.asp">
          <input type="hidden" name="itemid" value=<%=oRS("itemid")%>>
          <input type="submit" value="Add To cart" style="font-weight:bold;width:200px; height:40px">
        </form>
      </div>
  </div>

    <div style = "width:1200px;float:left;position:relative;top:70px;left:0px">
      <a href="shopcategories.asp"><img src="/graphics/images/shopformoreitems.png"></a>
<br><br>
      <a href="shopcategories.asp?category=<%=category%>"><img src="/graphics/images/more.png"> from <%=category%></a>
    </div>

  <%
    sqlstr = "SELECT price,category,itemid,name,image,dsc,discount,newarrivals FROM products WHERE recommendation =" & itemid

    set sr = oConnection.Execute(sqlstr)

    dim count

    count = 0

    dim c, d
    c = request("c")

    d = request("d")

    if c = "" then
      c = 1
      d = 8
    end if

    while not sr.eof

    if count mod 8 = 0 then
    %>
      <div style = "width:1200px;float:left;position:relative;top:70px;left:0px">
      <h1>Recommendations</h1>
    <%
    if count = 0 and c <> 1 then
    %>
      <div stylef = "width:1200px;float:left;position:relative;left:-100px">
      <div style = "float:left; width: 150px; height: 50px">
      <a href='item.asp?itemid=<%=sr("itemid")%>&c=<%=c-8%>&d=<%=d-8%>'>less...</a>
    </div>
    <%
    end if
    end if
    %>
    <div style = "float:left; width: 300px; height: 400px">
      <div>
        <a style="" href='item.asp?itemid=<%=sr("itemid")%>'><%=sr("name")%></a><br>
        <a style="color:red" href='item.asp?itemid=<%=sr("itemid")%>'>$<%=sr("price")%> USD</a>
      </div>
      <div>
        <a href='item.asp?itemid=<%=sr("itemid")%>'><img src='/productitems/<%=sr("image")%>' width="200" height="230"></a>
      </div>
    </div>
    <%
    if count = d - 1 then
%>
      <div style = "float:left; width: 150px; height: 100px">
      <a href='item.asp?itemid=<%=sr("itemid")%>&c=<%=c+8%>&d=<%=d+-8%>'><img src="/graphics/images/more.png"></a>
      </div>
<%
    end if

    if count mod 8 = 7 then
    %>
      </div>
    <%
    end if
    %>
<%
  sr.movenext
  count = count + 1
wend

if count mod 7 <> 6 then
    %>
      </div>
    <%
end if

  end if
  %>

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
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  

  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  

  <%
  oConnection.close()
  %>
    
    <!-- #include file="inc/footer.inc" -->
