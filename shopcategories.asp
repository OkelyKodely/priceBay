  <!-- #include file="inc/header.inc" -->
  <div class="shop" style="float:left;position:relative;top:-70px">
  
    <div style="width:1259px;height:337px;float:left; position:relative;left:-100px;top:-51px;">
      <a name="shopheref" />
      <br><br>
<script>

<%
Response.Write "var current = """&category&""";"
%>

function showItLt() {

   if(current == "all") {

     current = "app";
   }

   if(current == "fashion") {

     current = "all";
   }

   if(current == "kitchen") {

     current = "fashion";
  }

   if(current == "software") {

     current = "kitchen";
  }

   if(current == "computer") {

     current = "software";
  }

   if(current == "misc") {

     current = "computer";
  }

   if(current == "motors") {

     current = "misc";
  }

   if(current == "electronics") {

     current = "motors";
  }

   if(current == "collectibles") {

     current = "electronics";
  }

   if(current == "home") {

     current = "collectibles";
  }

   if(current == "sporting") {

     current = "home";
  }

   if(current == "toys") {

     current = "sporting";
  }

   if(current == "business") {

     current = "toys";
  }

   if(current == "music") {

     current = "business";
  }

   if(current == "deals") {

     current = "music";
  }

   if(current == "under10") {

     current = "deals";
  }

   if(current == "beauty") {

     current = "under10";
  }

   if(current == "personal") {

     current = "beauty";
  }

   if(current == "jewelry") {

     current = "personal";
  }

   if(current == "handmade") {

     current = "jewelry";
  }

   if(current == "travel") {

     current = "handmade";
  }

   if(current == "office") {

     current = "travel";
  }

   if(current == "pet") {

     current = "office";
  }

   if(current == "app") {

     current = "pet";
  }

  window.location.href='shopcategories.asp?category=' + current;
}

function showItGt() {

   if(current == "app") {

     current = "all";
   }

   if(current == "pet") {

     current = "app";
   }

   if(current == "office") {

     current = "pet";
   }

   if(current == "travel") {

     current = "office";
   }

   if(current == "handmade") {

     current = "travel";
   }

   if(current == "jewelry") {

     current = "handmade";
   }

   if(current == "personal") {

     current = "jewelry";
   }

   if(current == "beauty") {

     current = "personal";
   }

   if(current == "under10") {

     current = "beauty";
   }

   if(current == "deals") {

     current = "under10";
   }

   if(current == "music") {

     current = "deals";
   }

   if(current == "business") {

     current = "music";
   }

   if(current == "toys") {

     current = "business";
   }

   if(current == "sporting") {

     current = "toys";
   }

   if(current == "home") {

     current = "sporting";
   }

   if(current == "collectibles") {

     current = "home";
   }

   if(current == "electronics") {

     current = "collectibles";
   }

   if(current == "motors") {

     current = "electronics";
   }

   if(current == "misc") {

     current = "motors";
   }

   if(current == "computer") {

     current = "misc";
   }

   if(current == "software") {

     current = "computer";
   }

   if(current == "kitchen") {

     current = "software";
   }

   if(current == "fashion") {

     current = "kitchen";
   }

   if(current == "all") {

     current = "fashion";
   }

     window.location.href='shopcategories.asp?category=' + current;
}
</script>
      <%
      dim categoryName

      if category = "fashion" then
        categoryName = "Fashion"
%>
      <img src="/graphics/images/fashion-banner.png" width="1420" height="250">
<%
      elseif category = "kitchen" then
        categoryName = "Kitchen"
%>
      <img src="/graphics/images/kitchen-banner.png" width="1420" height="250">
<%
      elseif category = "software" then
        categoryName = "Software"
%>
      <img src="/graphics/images/software-banner.png" width="1420" height="250">
<%
      elseif category = "computer" then
        categoryName = "Computer"
%>
      <img src="/graphics/images/computer-banner.png" width="1420" height="250">
<%
      elseif category = "misc" then
        categoryName = "Miscellaneous"
%>
      <img src="/graphics/images/misc-banner.png" width="1420" height="250">
<%
      elseif category = "motors" then
        categoryName = "Motors"
%>
      <img src="/graphics/images/motors-banner.png" width="1420" height="250">
<%
      elseif category = "electronics" then
        categoryName = "Electronics"
%>
      <img src="/graphics/images/electronics-banner.png" width="1420" height="250">
<%
      elseif category = "collectibles" then
        categoryName = "Collectibles & Art"
%>
      <img src="/graphics/images/collectibles-banner.png" width="1420" height="250">
<%
      elseif category = "home" then
        categoryName = "Home & Garden"
%>
      <img src="/graphics/images/home-banner.png" width="1420" height="250">
<%
      elseif category = "sporting" then
        categoryName = "Sporting Goods"
%>
      <img src="/graphics/images/sporting-banner.png" width="1420" height="250">
<%
      elseif category = "toys" then
        categoryName = "Toys"
%>
      <img src="/graphics/images/toys-banner.png" width="1420" height="250">
<%
      elseif category = "business" then
        categoryName = "Business & Industrial"
%>
      <img src="/graphics/images/business-banner.png" width="1420" height="250">
<%
      elseif category = "music" then
        categoryName = "Music"
%>
      <img src="/graphics/images/music-banner.png" width="1420" height="250">
<%
      elseif category = "deals" then
        categoryName = "Deals"
%>
      <img src="/graphics/images/deals-banner.png" width="1420" height="250">
<%
      elseif category = "under10" then
        categoryName = "Under 10"
%>
      <img src="/graphics/images/under-10-banner.png" width="1420" height="250">
<%
      elseif category = "beauty" then
        categoryName = "Beauty"
%>
      <img src="/graphics/images/beauty-banner.png" width="1420" height="250">
<%
      elseif category = "personal" then
        categoryName = "Personal Care"
%>
      <img src="/graphics/images/personalcare-banner.png" width="1420" height="250">
<%
      elseif category = "jewelry" then
        categoryName = "Jewelry"
%>
      <img src="/graphics/images/jewelry-banner.png" width="1420" height="250">
<%
      elseif category = "handmade" then
        categoryName = "Handmade"
%>
      <img src="/graphics/images/handmade-banner.png" width="1420" height="250">
<%
      elseif category = "travel" then
        categoryName = "Travel"
%>
      <img src="/graphics/images/travel-banner.png" width="1420" height="250">
<%
      elseif category = "office" then
        categoryName = "Office Products"
%>
      <img src="/graphics/images/office-products-banner.png" width="1420" height="250">
<%
      elseif category = "pet" then
        categoryName = "Pet Supplies"
%>
      <img src="/graphics/images/pet-banner.png" width="1420" height="250">
<%
      elseif category = "appliances" then
        categoryName = "Appliances"
%>
      <img src="/graphics/images/app-banner.png" width="1420" height="250">
<%
      elseif category = "all" then
        categoryName = "All"
%>
      <img src="/graphics/images/all-banner.jpg" width="1420" height="250">
<%
      end if
      %>
    </div>

  <div id="lt" style="position:absolute;top:20px;left:-70px" onclick="showItLt()">
      <img src="/graphics/images/lt.png">
  </div>
  <div id="gt" style="position:absolute;top:20px;left:1050px" onclick="showItGt()">
      <img src="/graphics/images/gt.png">
  </div>


    <div class="shoptitle">
      <%
      if category = "all" then
      %>
      <span style="font-size:26">View in Details</span>
      <%
      else
      %>
      <span style="font-size:26">Items</span>
      <%
      end if
      %>
    </div><br>
<script>
$(function () {
    $('.item img').each(function () {
        $(this).data('original', this.src);
    }).mouseenter(function () {
        $(this).fadeOut(500, function(){
          $(this).attr('src', $(this).data('hover'));
          $(this).fadeIn(500);
        });
    }).mouseleave(function () {
        $(this).fadeOut(500, function(){
          $(this).attr('src', $(this).data('original'));
          $(this).fadeIn(500);
        });
    });
});
</script>
<%
if category = "all" then
%>
    <div style="width:1000px">
    <div style="width: 100%;height:260px;float:left">
      <div class="item" style="float: left;font-weight:bold">
        <a href="shopcategories.asp?category=fashion"><img src="/graphics/images/fashion-20-off.png" width="240" height="240"></a>
      &nbsp;</div>
      <div class="item" style="float: left;font-weight:bold">
        <a href="shopcategories.asp?category=kitchen"><img src="/graphics/images/kitchen-upto-50-off.png" width="240" height="240"></a>
      &nbsp;</div>
      <div class="item" style="float: left;font-weight:bold">
        <a href="shopcategories.asp?category=misc"><img src="/graphics/images/otheritems.png" width="240" height="240"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=software"><img src="/graphics/images/software.png"></a>
      </div>
    </div>

    <div style="width: 100%;height:260px;float:left">
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=computer"><img src="/graphics/images/computers.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=motors"><img src="/graphics/images/motors.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=electronics"><img src="/graphics/images/electronics.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=collectibles"><img src="/graphics/images/collectibles.png"></a>
      </div>
    </div>

    <div style="width: 100%;height:260px;float:left">
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=home"><img src="/graphics/images/homeandgarden.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=sporting"><img src="/graphics/images/sgoods.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=toys"><img src="/graphics/images/toys.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=business"><img src="/graphics/images/bindustrial.png"></a>
      </div>
    </div>

    <div style="width: 100%;height:260px;float:left">
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=music"><img src="/graphics/images/music.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=deals"><img src="/graphics/images/deals.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=under10"><img src="/graphics/images/under10.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=beauty"><img src="/graphics/images/beauty.png"></a>
      </div>
    </div>

    <div style="width: 100%;height:260px;float:left">
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=personal"><img src="/graphics/images/personalcare.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=jewelry"><img src="/graphics/images/jewelry.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=handmade"><img src="/graphics/images/handmade.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=travel"><img src="/graphics/images/travel.png"></a>
      </div>
    </div>

    <div style="width: 100%;height:260px;float:left">
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=office"><img src="/graphics/images/op.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=pet"><img src="/graphics/images/pet.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=appliances"><img src="/graphics/images/app.png"></a>
      &nbsp;</div>
      <div class="item" style="float:left;font-weight:bold">
        <a href="shopcategories.asp?category=all"><img src="/graphics/images/all.png"></a>
      </div>
    </div>
    </div>
<%
else
%>
<div style="position:absolute;top:230px;left:130px">
  <a href="shopcategories.asp"><img src="/graphics/images/shopformoreitems.png"></a>
  </div>
<%
end if
%>
    <%
    dim a, b

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1
      b = 8
    end if

    dim ssql

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT category, image, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY itemid DESC) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products WHERE 1 = 1 "
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    dim count
    count = a - 1

    while not oRS.eof

    if count mod 4 = 0 then
    if count = a - 1 then
    %>
      <div style = "width:1200px;float:left;position:relative;left:0px">
        <%
        if a <> 1 then
        %>
      <div style = "float:left; width: 50px; height: 300px">
      <a href='shopcategories.asp?a=<%=a-8%>&b=<%=b-8%>'>less...</a>
    </div>
        <%
        end if
        %>
    <%
    end if
    end if
    %>
    <div style = "float:left; width: 250px; height: 400px">
      <div>
        <a style="" href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a style="color:red" href='item.asp?itemid=<%=oRS("itemid")%>'>$<%=oRS("price")%> USD</a>
      </div>
      <div style = "width: 200px; height: 200px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>

    <%
    if count = b - 1 then
%>
      <div style = "float:left; width: 250px; height: 300px">
      <a href='shopcategories.asp?a=<%=a+8%>&b=<%=b+8%>'><img src="/graphics/images/more.png"></a>
      </div>
<%
    end if

    if count mod 4 = 3 then
    %>
      </div>
      <br>
    <%
    end if
    %>
<%
  oRS.movenext
  count = count + 1
wend

if count mod 4 <> 3 then
    %>
      </div>
    <%
end if

oConnection.close()
%>

  </div>
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
  <h1>&nbsp;</h1>  
    <!-- #include file="inc/footer.inc" -->
