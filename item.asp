  <!-- #include file="inc/header.inc" -->
  <%
  dim category

  category = request.querystring("category")

  if category = "" then
    category = "all"
  end if

    dim oConnection

    dim oRS

    dim itemid

    itemid = request.querystring("itemid")
    
    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"

    sqlstr = "SELECT * FROM products WHERE itemid='" & itemid & "'"

    set oRS = oConnection.Execute(sqlstr)

    if not oRS.eof then
      category = oRS("category")
    end if
  %>
  <div class="shop">
  
    <div class="shoptitle">
  	  <span style="font-size:26">Shop | <%=category%></span>
    </div>

    <div class="categoryitems">
      <a href="categories.asp">Shop Categories</a>
    </div>
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

    sqlstr = "SELECT * FROM products WHERE itemid='" & itemid & "'"

    set oRS = oConnection.Execute(sqlstr)

    if not oRS.eof then
      dim dsc
      dsc = oRS("dsc")
    %>
  <div id = "container" style = "width:100%">
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
    <img id="myimage" src='/productitems/<%=oRS("image")%>' width="300" height="240">
  </div>
  <div style="float:left;position:relative;left:60px">
    <div id="myresult" class="img-zoom-result"></div>
  </div>
</div>
        <script>imageZoom("myimage", "myresult"); </script>
          <br><p style="width:350px">Title: <%=oRS("name")%></p>
      </div>
      <div id = "right" style = "float:left; width: 350;">
        <span style="color:#000">Description:</span>
        <%=dsc%><br><br>
        <span style="color:#ff0000"><strikeout>Price:</strikeout></span>
        <span style="color:#ff0000"><strikeout>$<%=oRS("price")%></strikeout></span><br><br>
        <span style="color:#000">Discount Price:</span>
        $<%=(100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100%> !!~~<br><br>
        <form method="post" action="cart.asp">
          <input type="hidden" name="itemid" value=<%=oRS("itemid")%>>
          <input type="submit" value="Add To cart" style="width:200px; height:40px">
        </form>
      </div>
  </div>
  <%
  end if
  %>

  </div>
  <h1>&nbsp;</h1>  
    <!-- #include file="inc/footer.inc" -->
