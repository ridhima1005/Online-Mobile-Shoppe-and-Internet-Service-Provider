<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html>
<body>
<font color="black">
<br><br>
<form method="post" name="form4">
<table border="1" align="center">
<tr>
<th>feedback of</th>
<th>feedback for</th>
<th>name</th>
<th>address</th>
<th>email</th>
<th>phone</th>
<th>comments</th>
</tr>
<%
String f=request.getParameter("feedback");    
String fb=request.getParameter("feedback2");   
String n=request.getParameter("name");
String a=request.getParameter("address");
String e=request.getParameter("email");
String ph=request.getParameter("phone");
String c=request.getParameter("comments");
System.out.println("feedback="+f+"feedback2="+fb+"name="+n+"address="+a+"email="+e+"phone="+ph+"comments="+c);

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","ridhima");
	Statement st=con.createStatement();
	
				
		  
		  ResultSet rs = 	(ResultSet) st.executeQuery("SELECT * FROM feedback3");
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