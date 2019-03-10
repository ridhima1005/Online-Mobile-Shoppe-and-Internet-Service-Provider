<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="javax.servlet.*"%>
    <%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
body,td,th {
	font-size: 16px;
	font-family: "Copperplate Gothic Bold";
}
a:link {
	color: #FFF;
}
a:visited {
	color: #FFF;
}
</style>


<body text="#FFFFFF" >



<div style="background-color:#1C0415; width:1320; height:30; font-size: 18px;">
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;click here to<a href="logoutcontroller"><font color="red">logout</font></a>
</div>
<img src="images\purple.jpg" alt="myimg" width="1320" height="100">
<img src="images\mob2.jpg" width="60" height="80" hspace="30" style="position: absolute; top: 30px; left: 20px;"/>

<img src="images\nm.jpg" width="300" height="50" hspace="100" style="position: absolute; top: 50px; left: 20px; width: 300;"/>
<table width="1320" BORDER="1" align="center" cellpadding="20">
<tr>
<td align="center" bgcolor="#1C0415"><strong><a href="delete.jsp">DELETE</a></strong></td>
<td align="center" bgcolor="#1C0415"><strong><a href="update.jsp">UPDATE</a></strong></td>
<td align="center" bgcolor="#1C0415"><strong><a href="sale.jsp">SALE</a></strong></td>
<td align="center" bgcolor="#1C0415"><strong><a href="feed.jsp">FEEDBACK</a></strong></td>

</tr>
</table >

<font color="black">
<% String name=(String) session.getAttribute("username");%>
<% java.util.Date cr=new java.util.Date (session.getCreationTime()); %> 
<% java.util.Date lr=new java.util.Date (session.getLastAccessedTime()); %>
<center>
<div style="font-size:30px;"><br><br></div>
<div>hello<%=name %></div>
<div style="font-size:25px;">click here to<br><br><a href="logoutcontroller"><font color="red">logout</font></a></div>
<div style="font-size:30px;"><br><br><br>

<div>Login time:<%=cr %></div>
<div>last accessed time:<%=lr %></div>

</div>
</center>
</font>
</body>
</html>
