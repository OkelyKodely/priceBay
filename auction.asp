  <!-- #include file="inc/header.inc" -->
  <%
  dim category

  category = request.querystring("category")

  if category = "" then
    category = "all"
  end if
  %>
  <div class="shop">
  
    <div class="shoptitle">
  	  <span style="font-size:26">Auction</span>
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
'response.write sqlstr
      set uRS = oConnection.Execute(sqlstr)

      if not uRS.eof then

        uname = uRS("username")

        sqlstr = "INSERT INTO mustpay (username, itemid) VALUES ('"&uname&"',"&idd&")"
'response.write sqlstr
        oConnection.Execute(sqlstr)

      end if

    end if

    sqlstr = "SELECT * FROM mustpay WHERE itemid='" & itemid & "'"

    set oRS = oConnection.Execute(sqlstr)

    if not oRS.eof then
    %>
    <%=oRS("username")%> won this item.  <font color="red">Auction closed!</font>
    <%
    end if

    sqlstr = "SELECT price, image, description, name, id, duration, DATEADD(day, duration, inputdate) deadline FROM sellproducts WHERE id='" & itemid & "'"

    set oRS = oConnection.Execute(sqlstr)

    if not oRS.eof then
      dim dsc
      dsc = oRS("description")
    %>
  <div id = "container" style = "width:100%">
      <div id = "middle" style = "float:left; width: 250;">
          <a href=item.asp?itemid=<%=oRS("id")%>><img width="220" src=/productitems/<%=oRS("image")%>></a>
          <br><%=oRS("name")%>
      </div>
      <div id = "right" style = "float:left; width: 200;">
        <span style="color:#000">Description:</span>
        <%=dsc%><br><br>
        <span style="color:#000">Minimum Price:</span>
        $<%=oRS("price")%><br><br>
        <%
        sqlstr = "SELECT username, bidamount FROM Bids WHERE itemid='" & itemid & "' ORDER BY id DESC"
''response.write sqlstr
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
        <span style="color:#000">Last bid by <%=uRS("username")%> at $<%=uRS("bidamount")%> USD.</span><br><br>
        <%end if%>
        <%
        if username <> "" then
        %>
        <form method="post" action = "auction.asp">
          <input type="hidden" name="id" value='<%=oRS("id")%>'>
          <span style="color:#000">$<input type="text" name="bidamount" style="position:relative;top:0px;width:50px"> USD</span>
          <span style="color:#000"><input type="submit" value="Submit Bid"></span><br><br>
        </form>
        <%
        else
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
  document.getElementById("demo").innerHTML = "Remaining " + days + "d " + hours + "h "
  + minutes + "m " + seconds + "s ";

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
  
  <div style="position:relative;left:200px;top:100px">
    <!-- #include file="inc/footer.inc" -->
  </div>