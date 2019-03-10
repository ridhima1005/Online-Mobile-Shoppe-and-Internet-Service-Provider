<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback1</title>
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

<body text="#FFFFFF">

<div style="background-color:#1C0415; width:1320; height:30; font-size: 12px;">

</div>
<img src="images\purple.jpg" alt="myimg" width="1320" height="100">
<img src="images\mob2.jpg" width="60" height="80" hspace="30" style="position: absolute; top: 30px; left: 20px;"/>

<img src="images\nm.jpg" width="300" height="50" hspace="100" style="position: absolute; top: 50px; left: 20px; width: 300;"/>

<br>
<br>

<br>
<br>

<html>
<body>
<font color="black">
<br><br>
<h1><center> CUSTOMER FEEDBACK / REVIEW<center></h1>
<form method="post" name="form">
<table border="1" align="center">
<tr><th>Name</th><th>Feedback</th></tr>
<%
String n=request.getParameter("name1");
String f=request.getParameter("feed1");

System.out.println("name="+n+"feed="+f);

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","ridhima");
	Statement st=con.createStatement();
	
				
		  
		  ResultSet rs = 	(ResultSet) st.executeQuery("SELECT * FROM feedback");
%>
<%
while(rs.next()){
%>
<tr><td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>


</tr>
<%
}
%>
<%
}
catch(Exception e1){
e1.printStackTrace();
}
%>
</table>
<center>
<a href="gallery.jsp"><font color="red">BACK</font></a>
</center>
</font>
</font>
</body>
</html>