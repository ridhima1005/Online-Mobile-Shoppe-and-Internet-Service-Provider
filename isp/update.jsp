<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
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

<font color="black"><center>

<h3><u>UPDATE</u></h3></center>

<form action="displaycontroller" method="post">

<table align="center" border=2 >
<tr>
<td width="266" height="43"><label>BRAND:   </label></td>
<td width="287"><input type="text" name="brand" value="<%= session.getAttribute ("brand") %>"></td>
<tr>
<td height="44"><label>NAME:   </label></td>
<td><input type="text" name="nme" value="<%= session.getAttribute ("name") %>" ></td>
<tr>
<td height="45"><label>OPERATING SYSTEM:   </label></td>
<td><input type="text" name="os" value="<%= session.getAttribute ("os") %>"></td>
<tr>

<td height="45"> <label>CAMERA:   </label></td>
<td><input type="text" name="camera" value="<%= session.getAttribute ("camera") %>"></td>
<tr>
<td height="32"><label>STOCK:   </label></td>
<td><input type="text" name="stock" value="<%= session.getAttribute ("stock") %>"></td>
<tr>

<td height="38"><label>COST:   </label></td>
<td><input type="text" name="cost" value="<%= session.getAttribute ("cost") %>"></td>
<tr>
<td height="37"><label>SIZE:   </label></td>
<td><input type="text" name="size" value="<%= session.getAttribute ("size") %>"></td>
<tr>
<td height="40"><label>COLOR:   </label></td>
<td><input type="text" name="colour" value="<%= session.getAttribute ("colour") %>"></td>
<tr>

<td height="38"><label>PROCESSOR:   </label></td>
<td><input type="text" name="pro" value="<%= session.getAttribute ("processor") %>"></td>
<tr>

<td height="38"><label>MEMORY:   </label></td>
<td><input type="text" name="memory" value="<%= session.getAttribute ("memory") %>"></td>
<tr>

<td height="45"><label>RAM:   </label></td>
<td><input type="text" name="ram" value="<%= session.getAttribute ("RAM") %>"><br></td>

</table>
<br>
</font>
<center><input type ="submit" value ="SHOW DETAILS"/></center>
</form>
<form action="updatenext.jsp">
 <div>
  <center><button type="submit">UPDATE</button></center>
 </div>
</form>
<form action="welcome.jsp">
 <div>
  <center><button type="submit">BACK</button></center>
 </div>
</form>

</body>
</html>
