



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    
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
<form method="post" name="form">
<table border="1" align="center">
<tr><th>name</th><th>address</th><th>phone</th><th>email</th><th>city</th><th>date</th><th>mobile</th><th>price</th></tr>
<%
String n=request.getParameter("nm");
String a=request.getParameter("addr");
String p=request.getParameter("ph");
String e=request.getParameter("email");
String c=request.getParameter("city");
String d=request.getParameter("date");
String m=request.getParameter("mobile");
String pr=request.getParameter("price");
System.out.println("name="+n+"address="+a+"ph="+p+"email="+e+"city="+c+"date="+d+"mobile="+m+"price="+pr);

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smart","root","admin");
	Statement st=con.createStatement();
	
				
		  
		  ResultSet rs = 	(ResultSet) st.executeQuery("SELECT * FROM customer");
%>
<%
while(rs.next()){
%>
<tr><td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>

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
</form>
<form action="deletecontroller" method="post">
ENTER THE CUSTOMER NAME TO BE DELETED: <input type="text" name="cname">
<input type="submit" value="DELETE">

</form>
<form action="welcome.jsp">
 <div>
  <center><button type="submit">BACK</button></center>
 </div>
</form>

</font>
</body>
</html>