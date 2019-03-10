<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view subscriber</title>
</head>
<body>
<font color="black">
<br><br>
<form method="post" name="form4">
<table border="1" align="center">
<tr>
<th>form id</th>
<th>name</th>
<th>address</th>
<th>email</th>
<th>phone</th>
<th>dob</th>
<th>gender</th>
<th>nationality</th>
<th>proofs</th>
</tr>
<%
String f= request.getParameter("form_id");
String n= request.getParameter("name");
String a= request.getParameter("address");
String e= request.getParameter("email");
String ph=request.getParameter("phone");
String dob=request.getParameter("dob");
String g=request.getParameter("gender");
String nat=request.getParameter("nationality");
String p=request.getParameter("proofs");
System.out.println("form_id="+f+"name="+n+"address="+a+"email="+e+"phone="+ph+"dob="+dob+"gender="+g+"nationality="+nat+"proofs="+p);

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","ridhima");
	Statement st=con.createStatement();
	
				
		  
		  ResultSet rs = 	(ResultSet) st.executeQuery("SELECT * FROM new_subscribe");
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
<td><%=rs.getString(9)%></td>

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
<a href="internet_view.jsp"><font color="red">BACK</font></a>
</center>
</font>
</body>
</html>