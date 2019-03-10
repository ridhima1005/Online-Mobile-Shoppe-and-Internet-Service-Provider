<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Customer</title>
</head>

<html>
<body>
<font color="black">
<br><br>
<form method="post" name="form4">
<table border="1" align="center">
<tr>
<th>first_name</th>
<th>last_name</th>
<th>street</th>
<th>city</th>
<th>state</th>
<th>zip_code</th>
<th>phone</th>
<th>email</th>
<th>credit_no</th>
<th> expiry</th>
<th>expiry2</th>
</tr>
<%
String fn=request.getParameter("first_name");    
String ln=request.getParameter("last_name");   
String s=request.getParameter("street");
String c=request.getParameter("city");
String sta=request.getParameter("state");
String z=request.getParameter("zip_code");
String ph=request.getParameter("phone");
String cn=request.getParameter("credit_no");
String ex=request.getParameter("expiry");
String ex2=request.getParameter("expiry2");
System.out.println("first_name="+fn+"last_name="+ln+"street="+s+"city="+c+"state="+sta+"zip_code="+z+"phone="+ph+"credit_no="+cn+"expiry="+ex+"expiry2="+ex2);

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","ridhima");
	Statement st=con.createStatement();
	
				
		  
		  ResultSet rs = 	(ResultSet) st.executeQuery("SELECT * FROM internet_order");
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
<td><%=rs.getString(10)%></td>

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
