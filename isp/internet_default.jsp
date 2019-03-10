<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Internet-Welcome</title>
<link rel = "stylesheet" href = "style2.css" type = "text/css" />
</head>

<body>
<table width="900" border="0" align="center">
<tr>
<td colspan="2">
<img alt="" src="images\best.png" height="100" width="900">
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
</table>
</body>
</html>