<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view</title>
<link rel = "stylesheet" href = "style2.css" type = "text/css" />
</head>
<body>
<table width="900" border="0" align="center">
<tr>
<td colspan="2">
<img alt="" src="images/best.png" height="100" width="900">
</td>
</tr>

<tr>
<td colspan="2">
<%@ include file="internet_default_menu.jsp"%>
</td>
</tr>

<tr>
<td width="750" align="center" valign="top">
<%@include file="design.jsp" %>
</td>
</tr>

<%
String msg=(String)session.getAttribute("lErrorMsg");
if(msg!=null && msg.length()>0){
%>
<tr>
<td align="center">
<%out.println("<div class=boldred>"+msg+"</div>"); %>
<br>
</td>
</tr>
<%} %>

<br>

<tr >
<td>
<form action="view_customer.jsp" method="get" >
<input type="submit" value="View Customer Details" id="submit" name="submit" />
</form>
</td>
<td>
<form action="view_feedback.jsp" method="get">
<input type="submit" value="View Feedback" id="submit" name="submit" />
</form>
</td>
<tr>
<td>
<form action="view_subscriber.jsp" method="get">
<input type="submit" value="Subscriber Details" id="submit" name="submit" />
</form>
</td>
<td align="right">
<form action="index.html" method="get">
<input type="submit" value="logout" id="submit" name="submit" />
</form>
</td>
</tr>
</table>
</body>
</html>