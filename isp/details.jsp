<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Details</title>

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
</head>

<body text="#FFFFFF">

<div style="background-color:#1C0415; width:1320; height:30; font-size: 12px;">

</div>
<img src="images\purple.jpg" alt="myimg" width="1320" height="100">
<img src="images\mob2.jpg" width="60" height="80" hspace="30" style="position: absolute; top: 30px; left: 20px;"/>

<img src="images\nm.jpg" width="300" height="50" hspace="100" style="position: absolute; top: 50px; left: 20px; width: 300;"/>
<table width="1320" BORDER="1" align="center" cellpadding="20">
<tr>
<td width="330" align="center" bgcolor="#1C0415"><strong><a href="home.jsp">HOME</a></strong></td>
<td width="330" align="center" bgcolor="#1C0415"><strong><a href="gallery.jsp">GALLERY</a></strong></td>
<td width="330" align="center" bgcolor="#1C0415"><strong><a href="aboutus.jsp">ABOUT US</a></strong></td>
<td width="330" align="center" bgcolor="#1C0415"><strong><a href="privacy.jsp">PRIVACY POLICIES</a></strong></td>

</tr>
</table ><br>
<br>
<font color="black"><center>
<h3><u>SPECIFICATIONS</u></h3></center>
<form action="buycontroller" method="post">

<table align="center" border=2 >
<tr>
<td width="266" height="43"><label>BRAND:   </label></td>
<td width="287">				<%= session.getAttribute ("brand") %></td>
<tr>
<td height="44"><label>NAME:   </label></td>
<td><input type="text" value="<%= session.getAttribute ("name") %>" name="abc" readonly></td>
<tr>
<td height="45"><label>OPERATING SYSTEM:   </label></td>
<td>				<%= session.getAttribute ("os") %></td>
<tr>

<td height="45"> <label>CAMERA:   </label></td>
<td>				<%= session.getAttribute ("camera") %></td>
<tr>
<td height="32"><label>STOCK:   </label></td>
<td>				<%= session.getAttribute ("stock") %></td>
<tr>

<td height="38"><label>COST:   </label></td>
<td>				<%= session.getAttribute ("cost") %></td>
<tr>
<td height="37"><label>SIZE:   </label></td>
<td>				<%= session.getAttribute ("size") %></td>
<tr>
<td height="40"><label>COLOR:   </label></td>
<td>			<%= session.getAttribute ("colour") %></td>
<tr>

<td height="38"><label>PROCESSOR:   </label></td>
<td>				<%= session.getAttribute ("processor") %></td>
<tr>

<td height="38"><label>MEMORY:   </label></td>
	<td>			<%= session.getAttribute ("memory") %></td>
<tr>

<td height="45"><label>RAM:   </label></td>
	<td>			<%= session.getAttribute ("RAM") %><br></td>

</table></font>
<br>

<center><input type ="submit" value ="BUY NOW" onClick=doPost();/></center>
</form>

    <form action="cleancontroller" method="post">
<center><input type ="submit" value ="BACK"/></center>
</form>


</body>

</html>
