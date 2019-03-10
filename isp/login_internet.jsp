<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INTERNET LOGIN</title>
<link rel = "stylesheet" href = "style2.css" type = "text/css" />
</head>

<body>
<form name ="login2" action="Internet_login1" method="post">
<table width="900" align="center">
<tr>
<td width="750" align="center" valign="top">
<%@include file="design.jsp" %>
</td>
</tr>
	<tr>
	<td colspan="2">
	
	</td>
	</tr>
	
	<tr>
	<td colspan="2">
	<table border="0" align="center">
	<tr>
	<td>User Name</td>
	<td align="center">
	<input type="text" name="user_name" id="user_name" value=""/>
	</td>
	</tr>
	
	<tr>
	<td>Password</td>
	<td align="center">
	<input type="password" name="user_pswd" id="user_pswd" value=""/>
	</td>
	</tr>
	
	<tr>
	<td colspan="2" align="center">
	<form  method="get" action="internet_view.jsp">
	<input type="submit" name="submit" id="submit" value="submit" />
	</form>
	</td>
	</tr>
	
	<%
	String msg=(String)session.getAttribute("lerrorMsg");
	if(msg!=null && msg.length()>0){
		%>
		<tr>
		<td colspan="2" align="center">
		<% 
		out.println("<div class=boldred>"+msg+"</div>");
		%>
		</td>
		</tr>
		<% 
	}
	%>
</table>
</form>
</body>
</html>