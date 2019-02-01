  <!-- #include file="inc/header.inc" -->

<script>
<%
Response.Write "var current = """&category&""";"
%>

function showItLt() {

   if(current == "all") {

     current = "app";

    $('#all').fadeOut(1000);
    $('#all_').fadeOut(1000, function() {

      clear();

    $('#app').fadeIn(1600);
    $('#app_').fadeIn(1600);
    });
   }

   if(current == "fashion") {

     current = "all";

    $('#fashion').fadeOut(1000);
    $('#fashion_').fadeOut(1000, function() {

      clear();

    $('#all').fadeIn(1600);
    $('#all_').fadeIn(1600);
    });
   }

   if(current == "kitchen") {

     current = "fashion";

    $('#kitchen').fadeOut(1000);
    $('#kitchen_').fadeOut(1000, function() {

      clear();

    $('#fashion').fadeIn(1600);
    $('#fashion_').fadeIn(1600);
   });
  }

   if(current == "software") {

     current = "kitchen";

    $('#software').fadeOut(1000);
    $('#software_').fadeOut(1000, function() {

      clear();

    $('#kitchen').fadeIn(1600);
    $('#kitchen_').fadeIn(1600);
   });
  }

   if(current == "computer") {

     current = "software";

    $('#computer').fadeOut(1000);
    $('#computer_').fadeOut(1000, function() {

      clear();

    $('#software').fadeIn(1600);
    $('#software_').fadeIn(1600);
   });
  }

   if(current == "misc") {

     current = "computer";

    $('#misc').fadeOut(1000);
    $('#misc_').fadeOut(1000, function() {

      clear();

    $('#computer').fadeIn(1600);
    $('#computer_').fadeIn(1600);
   });
  }

   if(current == "motors") {

     current = "misc";

    $('#motors').fadeOut(1000);
    $('#motors_').fadeOut(1000, function() {

      clear();

    $('#misc').fadeIn(1600);
    $('#misc_').fadeIn(1600);
   });
  }

   if(current == "electronics") {

     current = "motors";

    $('#electronics').fadeOut(1000);
    $('#electronics_').fadeOut(1000, function() {

      clear();

    $('#motors').fadeIn(1600);
    $('#motors_').fadeIn(1600);
   });
  }

   if(current == "collectibles") {

     current = "electronics";

    $('#collectibles').fadeOut(1000);
    $('#collectibles_').fadeOut(1000, function() {

      clear();

    $('#electronics').fadeIn(1600);
    $('#electronics_').fadeIn(1600);
   });
  }

   if(current == "home") {

     current = "collectibles";

    $('#home').fadeOut(1000);
    $('#home_').fadeOut(1000, function() {

      clear();

    $('#collectibles').fadeIn(1600);
    $('#collectibles_').fadeIn(1600);
   });
  }

   if(current == "sporting") {

     current = "home";

    $('#sporting').fadeOut(1000);
    $('#sporting_').fadeOut(1000, function() {

      clear();

    $('#home').fadeIn(1600);
    $('#home_').fadeIn(1600);
   });
  }

   if(current == "toys") {

     current = "sporting";

    $('#toys').fadeOut(1000);
    $('#toys_').fadeOut(1000, function() {

      clear();

    $('#sporting').fadeIn(1600);
    $('#sporting_').fadeIn(1600);
   });
  }

   if(current == "business") {

     current = "toys";

    $('#business').fadeOut(1000);
    $('#business_').fadeOut(1000, function() {

      clear();

    $('#toys').fadeIn(1600);
    $('#toys_').fadeIn(1600);
   });
  }

   if(current == "music") {

     current = "business";

    $('#music').fadeOut(1000);
    $('#music_').fadeOut(1000, function() {

      clear();

    $('#business').fadeIn(1600);
    $('#business_').fadeIn(1600);
   });
  }

   if(current == "deals") {

     current = "music";

    $('#deals').fadeOut(1000);
    $('#deals_').fadeOut(1000, function() {

      clear();

    $('#music').fadeIn(1600);
    $('#music_').fadeIn(1600);
   });
  }

   if(current == "under10") {

     current = "deals";

    $('#under10').fadeOut(1000);
    $('#under10_').fadeOut(1000, function() {

      clear();

    $('#deals').fadeIn(1600);
    $('#deals_').fadeIn(1600);
   });
  }

   if(current == "beauty") {

     current = "under10";

    $('#beauty').fadeOut(1000);
    $('#beauty_').fadeOut(1000, function() {

      clear();

    $('#under10').fadeIn(1600);
    $('#under10_').fadeIn(1600);
   });
  }

   if(current == "personal") {

     current = "beauty";

    $('#personal').fadeOut(1000);
    $('#personal_').fadeOut(1000, function() {

      clear();

    $('#beauty').fadeIn(1600);
    $('#beauty_').fadeIn(1600);
   });
  }

   if(current == "jewelry") {

     current = "personal";

    $('#jewelry').fadeOut(1000);
    $('#jewelry_').fadeOut(1000, function() {

      clear();

    $('#personal').fadeIn(1600);
    $('#personal_').fadeIn(1600);
   });
  }

   if(current == "handmade") {

     current = "jewelry";

    $('#handmade').fadeOut(1000);
    $('#handmade_').fadeOut(1000, function() {

      clear();

    $('#jewelry').fadeIn(1600);
    $('#jewelry_').fadeIn(1600);
   });
  }

   if(current == "travel") {

     current = "handmade";

    $('#travel').fadeOut(1000);
    $('#travel_').fadeOut(1000, function() {

      clear();

    $('#handmade').fadeIn(1600);
    $('#handmade_').fadeIn(1600);
   });
  }

   if(current == "office") {

     current = "travel";

    $('#office').fadeOut(1000);
    $('#office_').fadeOut(1000, function() {

      clear();

    $('#travel').fadeIn(1600);
    $('#travel_').fadeIn(1600);
   });
  }

   if(current == "pet") {

     current = "office";

    $('#pet').fadeOut(1000);
    $('#pet_').fadeOut(1000, function() {

      clear();

    $('#office').fadeIn(1600);
    $('#office_').fadeIn(1600);
   });
  }

   if(current == "app") {

     current = "pet";

    $('#app').fadeOut(1000);
    $('#app_').fadeOut(1000, function() {

      clear();

    $('#pet').fadeIn(1600);
    $('#pet_').fadeIn(1600);
   });
  }
}

function showItGt() {

   if(current == "app") {

     current = "all";

    $('#app').fadeOut(1000);
    $('#app_').fadeOut(1000, function() {

      clear();

    $('#all').fadeIn(1600);
    $('#all_').fadeIn(1600);
    });
   }

   if(current == "pet") {

     current = "app";

    $('#pet').fadeOut(1000);
    $('#pet_').fadeOut(1000, function() {

      clear();

    $('#app').fadeIn(1600);
    $('#app_').fadeIn(1600);
    });
   }

   if(current == "office") {

     current = "pet";

    $('#office').fadeOut(1000);
    $('#office_').fadeOut(1000, function() {

      clear();

    $('#pet').fadeIn(1600);
    $('#pet_').fadeIn(1600);
    });
   }

   if(current == "travel") {

     current = "office";

    $('#travel').fadeOut(1000);
    $('#travel_').fadeOut(1000, function() {

      clear();

    $('#office').fadeIn(1600);
    $('#office_').fadeIn(1600);
    });
   }

   if(current == "handmade") {

     current = "travel";

    $('#handmade').fadeOut(1000);
    $('#handmade_').fadeOut(1000, function() {

      clear();

    $('#travel').fadeIn(1600);
    $('#travel_').fadeIn(1600);
    });
   }

   if(current == "jewelry") {

     current = "handmade";

    $('#jewelry').fadeOut(1000);
    $('#jewelry_').fadeOut(1000, function() {

      clear();

    $('#handmade').fadeIn(1600);
    $('#handmade_').fadeIn(1600);
    });
   }

   if(current == "personal") {

     current = "jewelry";

    $('#personal').fadeOut(1000);
    $('#personal_').fadeOut(1000, function() {

      clear();

    $('#jewelry').fadeIn(1600);
    $('#jewelry_').fadeIn(1600);
    });
   }

   if(current == "beauty") {

     current = "personal";

    $('#beauty').fadeOut(1000);
    $('#beauty_').fadeOut(1000, function() {

      clear();

    $('#personal').fadeIn(1600);
    $('#personal_').fadeIn(1600);
    });
   }

   if(current == "under10") {

     current = "beauty";

    $('#under10').fadeOut(1000);
    $('#under10_').fadeOut(1000, function() {

      clear();

    $('#beauty').fadeIn(1600);
    $('#beauty_').fadeIn(1600);
    });
   }

   if(current == "deals") {

     current = "under10";

    $('#deals').fadeOut(1000);
    $('#deals_').fadeOut(1000, function() {

      clear();

    $('#under10').fadeIn(1600);
    $('#under10_').fadeIn(1600);
    });
   }

   if(current == "music") {

     current = "deals";

    $('#music').fadeOut(1000);
    $('#music_').fadeOut(1000, function() {

      clear();

    $('#deals').fadeIn(1600);
    $('#deals_').fadeIn(1600);
    });
   }

   if(current == "business") {

     current = "music";

    $('#business').fadeOut(1000);
    $('#business_').fadeOut(1000, function() {

      clear();

    $('#music').fadeIn(1600);
    $('#music_').fadeIn(1600);
    });
   }

   if(current == "toys") {

     current = "business";

    $('#toys').fadeOut(1000);
    $('#toys_').fadeOut(1000, function() {

      clear();

    $('#business').fadeIn(1600);
    $('#business_').fadeIn(1600);
    });
   }

   if(current == "sporting") {

     current = "toys";

    $('#sporting').fadeOut(1000);
    $('#sporting_').fadeOut(1000, function() {

      clear();

    $('#toys').fadeIn(1600);
    $('#toys_').fadeIn(1600);
    });
   }

   if(current == "home") {

     current = "sporting";

    $('#home').fadeOut(1000);
    $('#home_').fadeOut(1000, function() {

      clear();

    $('#sporting').fadeIn(1600);
    $('#sporting_').fadeIn(1600);
    });
   }

   if(current == "collectibles") {

     current = "home";

    $('#collectibles').fadeOut(1000);
    $('#collectibles_').fadeOut(1000, function() {

      clear();

    $('#home').fadeIn(1600);
    $('#home_').fadeIn(1600);
    });
   }

   if(current == "electronics") {

     current = "collectibles";

    $('#electronics').fadeOut(1000);
    $('#electronics_').fadeOut(1000, function() {

      clear();

    $('#collectibles').fadeIn(1600);
    $('#collectibles_').fadeIn(1600);
    });
   }

   if(current == "motors") {

     current = "electronics";

    $('#motors').fadeOut(1000);
    $('#motors_').fadeOut(1000, function() {

      clear();

    $('#electronics').fadeIn(1600);
    $('#electronics_').fadeIn(1600);
    });
   }

   if(current == "misc") {

     current = "motors";

    $('#misc').fadeOut(1000);
    $('#misc_').fadeOut(1000, function() {

      clear();

    $('#motors').fadeIn(1600);
    $('#motors_').fadeIn(1600);
    });
   }

   if(current == "computer") {

     current = "misc";

    $('#computer').fadeOut(1000);
    $('#computer_').fadeOut(1000, function() {

      clear();

    $('#misc').fadeIn(1600);
    $('#misc_').fadeIn(1600);
    });
   }

   if(current == "software") {

     current = "computer";

    $('#software').fadeOut(1000);
    $('#software_').fadeOut(1000, function() {

      clear();

    $('#computer').fadeIn(1600);
    $('#computer_').fadeIn(1600);
    });
   }

   if(current == "kitchen") {

     current = "software";

    $('#kitchen').fadeOut(1000);
    $('#kitchen_').fadeOut(1000, function() {

      clear();

    $('#software').fadeIn(1600);
    $('#software_').fadeIn(1600);
    });
   }

   if(current == "fashion") {

     current = "kitchen";

    $('#fashion').fadeOut(1000);
    $('#fashion_').fadeOut(1000, function() {

      clear();

    $('#kitchen').fadeIn(1600);
    $('#kitchen_').fadeIn(1600);
    });
   }

   if(current == "all") {

     current = "fashion";

    $('#all').fadeOut(1000);
    $('#all_').fadeOut(1000, function() {

      clear();

    $('#fashion').fadeIn(1600);
    $('#fashion_').fadeIn(1600);
    });
   }
}

function clear() {
   document.getElementById('all').style.display='none';
   document.getElementById('fashion').style.display='none';
   document.getElementById('kitchen').style.display='none';
   document.getElementById('software').style.display='none';
   document.getElementById('computer').style.display='none';
   document.getElementById('misc').style.display='none';
   document.getElementById('motors').style.display='none';
   document.getElementById('electronics').style.display='none';
   document.getElementById('collectibles').style.display='none';
   document.getElementById('home').style.display='none';
   document.getElementById('sporting').style.display='none';
   document.getElementById('toys').style.display='none';
   document.getElementById('business').style.display='none';
   document.getElementById('music').style.display='none';
   document.getElementById('deals').style.display='none';
   document.getElementById('under10').style.display='none';
   document.getElementById('beauty').style.display='none';
   document.getElementById('personal').style.display='none';
   document.getElementById('jewelry').style.display='none';
   document.getElementById('handmade').style.display='none';
   document.getElementById('travel').style.display='none';
   document.getElementById('office').style.display='none';
   document.getElementById('pet').style.display='none';
   document.getElementById('app').style.display='none';

   document.getElementById('all_').style.display='none';
   document.getElementById('fashion_').style.display='none';
   document.getElementById('kitchen_').style.display='none';
   document.getElementById('software_').style.display='none';
   document.getElementById('computer_').style.display='none';
   document.getElementById('misc_').style.display='none';
   document.getElementById('motors_').style.display='none';
   document.getElementById('electronics_').style.display='none';
   document.getElementById('collectibles_').style.display='none';
   document.getElementById('home_').style.display='none';
   document.getElementById('sporting_').style.display='none';
   document.getElementById('toys_').style.display='none';
   document.getElementById('business_').style.display='none';
   document.getElementById('music_').style.display='none';
   document.getElementById('deals_').style.display='none';
   document.getElementById('under10_').style.display='none';
   document.getElementById('beauty_').style.display='none';
   document.getElementById('personal_').style.display='none';
   document.getElementById('jewelry_').style.display='none';
   document.getElementById('handmade_').style.display='none';
   document.getElementById('travel_').style.display='none';
   document.getElementById('office_').style.display='none';
   document.getElementById('pet_').style.display='none';
   document.getElementById('app_').style.display='none';
}

function showYourLove(el) {

   clear();

   document.getElementById(el).style.display='';
   document.getElementById(el+'_').style.display='';

   current = el;
}
</script>

  <div class="shop1" style="width:100%;position:relative;top:30px">
<div style="width:1259px;height:337px;position:relative;top:-111px;left:-100px">
  <div style="display:''" id="all_">
      <img src="/graphics/images/all-banner.jpg" width="1420" height="250">
  </div>
  <div style="display:none" id="fashion_">
      <img src="/graphics/images/fashion-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="kitchen_">
      <img src="/graphics/images/kitchen-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="software_">
      <img src="/graphics/images/software-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="computer_">
      <img src="/graphics/images/computer-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="misc_">
      <img src="/graphics/images/misc-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="motors_">
      <img src="/graphics/images/motors-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="electronics_">
      <img src="/graphics/images/electronics-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="collectibles_">
      <img src="/graphics/images/collectibles-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="home_">
      <img src="/graphics/images/home-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="sporting_">
      <img src="/graphics/images/sporting-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="toys_">
      <img src="/graphics/images/toys-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="business_">
      <img src="/graphics/images/business-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="music_">
      <img src="/graphics/images/music-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="deals_">
      <img src="/graphics/images/deals-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="under10_">
      <img src="/graphics/images/under-10-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="beauty_">
      <img src="/graphics/images/beauty-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="personal_">
      <img src="/graphics/images/personalcare-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="jewelry_">
      <img src="/graphics/images/jewelry-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="handmade_">
      <img src="/graphics/images/handmade-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="travel_">
      <img src="/graphics/images/travel-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="office_">
      <img src="/graphics/images/office-products-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="pet_">
      <img src="/graphics/images/pet-banner.png" width="1420" height="250">
  </div>
  <div style="display:none" id="app_">
      <img src="/graphics/images/app-banner.png" width="1420" height="250">
  </div>

  <div id="lt" style="position:absolute;top:20px;left:30px" onclick="showItLt()">
      <img src="/graphics/images/lt.png">
  </div>
  <div id="gt" style="position:absolute;top:20px;left:1150px" onclick="showItGt()">
      <img src="/graphics/images/gt.png">
  </div>


<%
      dim categoryName

      if category = "software" then
        categoryName = "Software"
%>
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
      elseif 1 = 2 and category = "all" then
        categoryName = "All"
%>
      <img src="/graphics/images/all-banner.jpg" width="1420" height="250">
<%
      end if
      %>
    </div>

  <div style="float:left;position:relative;top:-100px;font-size:20px;z-index:1">
<div><b>View Buying Categories</b></div>
<hr>
      
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('all')">All ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('fashion')">Fashion ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('kitchen')">Kitchen ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('software')">Software ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('computer')">Computer ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('misc')">Miscellaneous ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('motors')">Motors ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('electronics')">Electronics ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('collectibles')">Collectibles & Art ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('home')">Home & Garden ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('sporting')">Sporting Goods ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('toys')">Toys ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('business')">Business & Industrial ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('music')">Music ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('deals')">Deals ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('under10')">Under $10 ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('beauty')">Beauty ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('personal')">Personal Care ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('jewelry')">Jewelry ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('handmade')">Handmade ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('travel')">Travel ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('office')">Office Products ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('pet')">Pet Supplies ></button><br>
<button class="favorite styled1" type="button" style="width:210px;height:46px;color:black" onclick="showYourLove('app')">Appliances ></button>
</div>

<div id="all" style="display:block;position:relative;left:50px;top:-70px;width:1200px;z-index:10">

<%

    category = "all"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href='shopcategories.asp?category=<%=category%>'><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>


</div>
</div>
<div id="fashion" style="display:none;position:relative;left:50px;top:-70px;width:1200px;z-index:10">
<%

    category = "fashion"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>


</div>
</div>
<div id="kitchen" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "kitchen"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="software" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "software"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="computer" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "computer"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="misc" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "misc"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="motors" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "motors"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="electronics" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "electronics"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="collectibles" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "collectibles"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="home" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "home"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="sporting" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "sporting"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="toys" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "toys"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="business" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "business"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>

<div id="music" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "music"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="deals" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "deals"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="under10" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "under10"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>

<div id="beauty" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "beauty"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="personal" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "personal"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="jewelry" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "jewelry"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="handmade" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "handmade"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="travel" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "travel"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="office" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "office"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="pet" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "pet"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div id="app" style="display:none;position:relative;left:150px;top:-70px;width:1200px;z-index:10">
<%

    category = "app"

    a = request("a")

    b = request("b")

    if a = "" then
      a = 1

      b = 11
    end if

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, discount, itemid, name, price,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    if category = "all" then
      ssql = ssql & "    FROM products"
    else
      ssql = ssql & "    FROM products WHERE category = '"&category&"' "
    end if
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&a&" AND "&b&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 4 = 0 then
    %>
      <div>
    <%
    end if

    if count = 0 and a <> 1 then
    %>
      <div style = "float:left; width: 150px; height: 350px">
      <a href='shop.asp?a=<%=a-14%>&b=<%=b-14%>'><img src="/graphics/images/cat.png"> less...</a>
    </div>
    <%
    end if
    %>
    <div style = "float:left; width: 240px; height: 420px">
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><font color="red">Sale: $<%response.write formatnumber((100-cdbl(oRS("discount")))*cdbl(oRS("price"))/100,2)%> USD</font></a><br>
      </div>
      <div style="width:230px;height:190px">
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>'></a>
      </div>
    </div>
    <%
    if count mod 4 = 3 then
    %>
      </div>
    <%
    end if

    if count = 10 then
    %>
    <div style = "float:left; width: 240px; height: 350px; position:relative;left:0px">
      <div style = "width: 150px; height: 130px">
      <a href=shop.asp?category=<%=category%>&a=<%=a+14%>&b=<%=b+14%>><img src="/graphics/images/more.png"></a>
      </div>
    </div>

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

%>

</div>
</div>
<div>

    <h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
        <h1>&nbsp;</h1>
    <div style="width:1259px;height:337px;position:relative;left:17px;top:-30px;">
      <img src="/graphics/images/twentyfivev.png" width="1259" height="337" usemap="#salemap">
<map name="salemap">
  <area shape="rect" coords="784,3,1257,124" href="shop.asp">
  <area shape="rect" coords="784,125,1257,220" href="newarrivals.asp">
  <area shape="rect" coords="784,221,1257,334" href="bestsellers.asp">
</map>
    </div>
            <a name="shopheref"></a>
<div style="float:left;position:relative;top:310px;left:27px;width:1357px;height:65px;background-color:#5577cc;font-weight:bold;font-size:15px;color:black;z-index:1">
  <br>
  <form method="post" action="subscribe.asp">Subscribe to our website <input type="text" name="email" style="position:relative;top:5px">&nbsp;<input type="submit" value="Submit Email"></form>
</div>
<div style="width:1359px;height:337px;position:relative;top:300px;left:0px">
      <img src="/graphics/images/new-arrivals-banner.png" width="1359" height="337">
    </div>
    <h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
    </div>
    <%
    dim c, d

    c = request("c")

    d = request("d")

    c = 1

    d = 7

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, name, itemid, price, discount,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    ssql = ssql & "    FROM products WHERE newarrivals = 1"
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&c&" AND "&d&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 8 = 0 then
    %>
      <div style = "width:1200px;float:left;position:relative;top:700px;left:100px">
    <%
    if count = 0 and c <> 1 then
    %>
      <div stylef = "width:1200px;float:left;position:relative;left:0px">
      <div style = "float:left; width: 150px; height: 50px">
      <a href='shop.asp?c=<%=c-8%>&d=<%=d-8%>'>less...</a>
    </div>
    <%
    end if
    end if
    %>
    <div style = "float:left; width: 300px; height: 400px">
      <div>
        <a style="" href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a style="color:red" href='item.asp?itemid=<%=oRS("itemid")%>'>$<%=oRS("price")%> USD</a>
      </div>
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>' width="200" height="230"></a>
      </div>
    </div>
    <%
    if count = d - 1 then
%>
      <div style = "float:left; width: 150px; height: 100px">
      <a href='newarrivals.asp'><img src="/graphics/images/more.png"></a>
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
  oRS.movenext
  count = count + 1
wend

if count mod 7 <> 6 then
    %>
      </div>
    <%
end if
%>
    <h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
        <h1>&nbsp;</h1>
            <a name="shophereg"></a>
<div style="width:1359px;height:337px;position:relative;top:660px;left:0px">
      <img src="/graphics/images/best-sellers-banner.png" width="1359" height="337">
    </div>
    <%

    c = request("c")

    d = request("d")

    c = 1

    d = 8

    ssql = "WITH sellProds AS "

    ssql = ssql & "("
    ssql = ssql & "    SELECT image, name, itemid, price, discount,"
    ssql = ssql & "    ROW_NUMBER() OVER (ORDER BY newid()) AS 'RowNumber'"
    ssql = ssql & "    FROM products WHERE bestseller = 1"
    ssql = ssql & ") "
    ssql = ssql & "SELECT * "
    ssql = ssql & "FROM sellProds "
    ssql = ssql & "WHERE RowNumber BETWEEN "&c&" AND "&d&";"

    set oRS = oConnection.Execute(ssql)

    count = 0

    while not oRS.eof

    if count mod 8 = 0 then
    %>
      <div style = "width:1200px;float:left;position:relative;top:1120px;left:100px">
    <%
    if count = 0 and c <> 1 then
    %>
      <div stylef = "width:1200px;float:left;position:relative;left:0px">
      <div style = "float:left; width: 150px; height: 50px">
      <a href='shop.asp?c=<%=c-8%>&d=<%=d-8%>'>less...</a>
    </div>
    <%
    end if
    end if
    %>
    <div style = "float:left; width: 300px; height: 400px">
      <div>
        <a style="" href='item.asp?itemid=<%=oRS("itemid")%>'><%=oRS("name")%></a><br>
        <a style="color:red" href='item.asp?itemid=<%=oRS("itemid")%>'>$<%=oRS("price")%> USD</a>
      </div>
      <div>
        <a href='item.asp?itemid=<%=oRS("itemid")%>'><img src='/productitems/<%=oRS("image")%>' width="200" height="230"></a>
      </div>
    </div>
    <%
    if count = d - 1 then
%>
      <div style = "float:left; width: 150px; height: 100px">
      <a href='newarrivals.asp'><img src="/graphics/images/more.png"></a>
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
  oRS.movenext
  count = count + 1
wend

if count mod 7 <> 6 then
    %>
      </div>
    <%
end if

oConnection.close()
%>

  </div>

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

    <!-- #include file="inc/footer.inc" -->
  