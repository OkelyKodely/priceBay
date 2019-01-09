<% Response.Expires = 0

Dim ResponseCode, ResponseReasonText, ResponseReasonCode, ResponseSubcode, AVS, ReceiptLink, TransID
Dim Amount, AuthCode

' Retrieving and defining Form Data from Post command body from Authorize.Net
ResponseCode = Trim(Request.Form("x_response_code"))
ResponseReasonText = Trim(Request.Form("x_response_reason_text"))
ResponseReasonCode = Trim(Request.Form("x_response_reason_code"))
AVS = Trim(Request.Form("x_avs_code"))
TransID = Trim(Request.Form("x_Trans_ID"))
AuthCode = Trim(Request.Form("x_Auth_Code"))
Amount = Trim(Request.Form("x_amount"))
ReceiptLink = "http://www.authorizenet.com"

dim mailtothisfool

dim username

'dim cartid

dim oConnection

dim s_address, s_city, s_state, s_zipcode, s_country

username = request.form("x_custom_1")

'cartid = request.form("x_custom_2")

s_address = request.form("x_custom_3")

s_city = request.form("x_custom_4")

s_state = request.form("x_custom_5")

s_zipcode = request.form("x_custom_6")

s_country = request.form("x_custom_7")

dim oRS

sConnection = "Dsn=odbc1;Integrated Security=True"

set oConnection = server.createobject("ADODB.Connection")

oConnection.Open "odbc1","sa","coppersink21"

dim sqlstr

sqlstr = "SELECT * FROM shoppers WHERE username='" & username & "'"

set oRS = oConnection.Execute(sqlstr)

if not oRS.eof then
  mailtothisfool = oRS("email")
end if

sqlstr = "INSERT INTO [order] (username, price, inputdate, s_address, s_city, s_state, s_zipcode, s_country) VALUES "
sqlstr = sqlstr & "('"&username&"',"&Amount&",getDate(),'"&s_address&"','"&s_city&"','"&s_state&"','"&s_zipcode&"','"&s_country&"')"

oConnection.Execute(sqlstr)

sqlstr = "SELECT orderid FROM [order] ORDER BY orderid DESC"
set rs = oConnection.Execute(sqlstr)

dim orderid

if not rs.eof then

  orderid = rs("orderid")

  sqlstr = "SELECT * FROM cart where cid = " & cartid

  set r_s = oConnection.Execute(sqlstr)

  while not r_s.eof

  	dim itemid

  	itemid = r_s("itemid")

  	sqlstr = "INSERT INTO orderitems (orderid,itemid) VALUES ("&orderid&","&itemid&")"

  	oConnection.Execute(sqlstr)

    r_s.movenext

  wend

end if

'sqlstr = "DELETE FROM cart WHERE cid = " & cartid

'oConnection.Execute(sqlstr)

dim objMail 
Set objMail = Server.CreateObject("CDO.Message") 

dim smtpServer, yourEmail, yourPassword
smtpServer = "smtp.gmail.com"
yourEmail = "sale.pbay@gmail.com"     'replace with a valid gmail account
yourPassword = "coppersink21"   'replace with a valid password for account set in yourEmail 

objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = smtpServer
objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465 
objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = true
objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusername") = yourEmail
objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendpassword") = yourPassword
objMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60 
objMail.Configuration.Fields.Update 

objMail.Subject="Your pBay Auction Order"
objMail.htmlBody = "You have bought an item from pBay.com of the amount of " & Request.Form("x_Amount") & ".  Thank you for doing business with us."
objMail.From = "sale.pbay@gmail.com"
objMail.To = mailtothisfool
objMail.Send   

response.redirect "thankyou.asp"
%>