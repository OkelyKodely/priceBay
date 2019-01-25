<%
dim oConnection

set oConnection = server.createobject("ADODB.Connection")

oConnection.Open "odbc2","sa","coppersink21"

dim email

email = request.form("email")

dim rs

dim sqlstr

sqlstr = "SELECT * FROM shoppers WHERE email = '"&email&"'"

set rs = oConnection.execute(sqlstr)

if rs.eof and email <> "" then

	sqlstr = "INSERT INTO subscription (email) VALUES ('"&email&"')"

	oConnection.execute(sqlstr)

end if

response.redirect "/shop.asp"
%>