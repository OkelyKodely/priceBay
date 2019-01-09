  <!-- #include file="inc/header.inc" -->
  <%
  dim category

  category = request.querystring("category")

  if category = "" then
    category = "all"
  end if
  %>
  <h1>&nbsp;</h1>
  <div class="auction">
  
    <div class="shoptitle" style="height:60px">
  	  <span style="font-size:26">Item Auction</span>
    </div>

    <div class="shoptitle" style="height:60px">
      ><a href="auction.asp"><span style="font-size:16">Your Other Auctions</span></a>
    </div>

    <%
    dim cartid

    cartid = session("cartid")

    dim oConnection

    dim oRS

    sConnection = "Dsn=odbc1;Integrated Security=True"

    set oConnection = server.createobject("ADODB.Connection")

    oConnection.Open "odbc1","sa","coppersink21"

    dim username

    username = session("username")

    dim itemid

    itemid = Request("id")

    dim bidamount

    bidamount = request.form("bidamount")

    dim sqlstr

    if bidamount <> "" then

      sqlstr = "INSERT INTO Bids (username, bidamount, itemid, inputdate) VALUES ('"&username&"',"&bidamount&","&itemid&",getDate())"

      oConnection.Execute(sqlstr)

    end if
    
    sqlstr = "SELECT price, image, description, name, id, duration, DATEADD(day, duration, inputdate) deadline FROM sellproducts WHERE id='" & itemid & "' AND getDate() >= DATEADD(day, duration, inputdate)"

    set oRS = oConnection.Execute(sqlstr)

    dim uname

    if not oRS.eof then
  
      dim idd

      idd = oRS("id")

      sqlstr = "SELECT * FROM Bids WHERE itemid = " & idd & " ORDER BY bidamount DESC"

      set uRS = oConnection.Execute(sqlstr)

      if not uRS.eof then

        uname = uRS("username")

        sqlstr = "SELECT * FROM mustpay WHERE itemid = " & idd & " and username = '"&uname&"'"

        set oo = oConnection.execute(sqlstr)

        if oo.eof then

          sqlstr = "INSERT INTO mustpay (username, itemid) VALUES ('"&uname&"',"&idd&")"

          oConnection.Execute(sqlstr)

        end if

      end if

    end if

    sqlstr = "SELECT * FROM mustpay WHERE itemid='" & itemid & "'"

    set oRS = oConnection.Execute(sqlstr)

    dim closed

    if not oRS.eof then
      closed = true
    %>
    <div style="height:60px">
      <%=oRS("username")%> won this item.  <font color="red">Auction closed!</font>
    </div>
    <%
    end if

    sqlstr = "SELECT name, price, image, shippingpolicy, description, id, duration, DATEADD(day, duration, inputdate) deadline FROM sellproducts WHERE id='" & itemid & "'"

    set oRS = oConnection.Execute(sqlstr)

    if not oRS.eof then
      dim dsc
      dsc = oRS("description")
    %>
  <div id = "container" style = "width:100%">
      <div id = "middle" style = "float:left; width: 250;">
          <a href=item.asp?itemid=<%=oRS("id")%>><img width="220" height="150" src=/productitems/<%=oRS("image")%>></a>
          <br>Title: <%=oRS("name")%>
      </div>
      <div id = "right" style = "float:left; width: 200px;">
        <span style="color:#000">Description:</span>
        <%=dsc%><br><br>
        <span style="color:#000">Shipping Policy:</span>
        <%=oRS("shippingpolicy")%><br><br>
        <span style="color:#000">Minimum Price:</span>
        $<%=oRS("price")%><br><br>
        <%
        sqlstr = "SELECT username, bidamount FROM Bids WHERE itemid='" & itemid & "' ORDER BY id DESC"

        set uRS = oConnection.Execute(sqlstr)

        if not uRS.eof then%>
        <span style="color:#000">Last Bid:</span>
        $<%=uRS("bidamount")%><br><br>
        <%end if%>
        <span style="color:#000">Duration:</span>
        <%=oRS("duration")%> days<br><br>
        <span style="color:#000">Deadline:</span>
        <%=oRS("deadline")%><br><br>
        <%if not uRS.eof then%>
        <span style="color:#000">Last bid by <span style=color:red><%=uRS("username")%> at $<%=uRS("bidamount")%> USD</span>.</span><br><br>
        <%end if%>
        <%
        if username <> "" and not closed then
        %>
        <form method="post" action = "auction.asp">
          <input type="hidden" name="id" value='<%=oRS("id")%>'>
          <span style="color:#000">$<input type="text" name="bidamount" style="position:relative;top:0px;width:50px"> USD</span>
          <span style="color:#000"><input type="submit" value="Submit Your Bid"></span><br><br>
        </form>
        <%
        elseif not closed then
        %>
        <a href="login.asp">Sign in</a> to bid
        <%
        end if
        %>
        <p id="demo"></p>

<script>
// Set the date we're counting down to
var countDownDate = new Date('<%=oRS("deadline")%>').getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get todays date and time
  var now = new Date().getTime();

  // Find the distance between now and the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  document.getElementById("demo").innerHTML = "<span style=color:blue>Remaining " + days + "d " + hours + "h "
  + minutes + "m " + seconds + "s </span>";

  // If the count down is finished, write some text
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "EXPIRED";
  }
}, 1000);
</script>
      </div>
  </div>
  <%
  end if
  %>

  </div>
  
    <!-- #include file="inc/footer.inc" -->
