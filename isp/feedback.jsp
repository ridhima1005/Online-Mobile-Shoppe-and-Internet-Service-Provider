<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
<script type="text/javascript">
function formValidator()
{
   var nm=document.forms["myForm"]["name1"].value;
   var re = /^[a-zA-Z-,]/;
   var feed=document.forms["myForm"]["feed1"].value;
  
   if(nm == "" || nm == null)
   {
     alert( "Name  must not be empty" );
     document.myForm.name1.focus() ;
     return false;
   }
   if(!nm.match(re))
   {
     alert( "Name invaild" );
     document.myForm.name1.focus() ;
     return false;
   }
   if(feed == "" || feed == null)
   {
     alert( "Feedback must not be empty" );
     document.myForm.feed1.focus() ;
     return false;
   } 
   
  
   return( true );
   
}
</script>


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
</head>
<title>home</title>
<body text="#FFFFFF">
<div style="background-color:#1C0415; width:1310; height:30; font-size: 12px;">

&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<strong> WELCOME! &emsp;<a href="log.jsp">Log in</a>(for admin only)</strong> </div>
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
</table >

<body>
<center>
<font color="black">
<h2>THANK YOU FOR  VISITING OUR WEBSITE !!!</h2>
<h2>YOUR PRODUCT WILL BE DELIVERED IN 2-3 WORKING DAYS !</h2>
<br>
<form action="feedbackcontroller" method="post" name="myForm" onSubmit="return formValidator()">
<h1><U><STRONG>FEEDBACK</U></STRONG></h1>
Name :&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="text" name="name1" />
<br /><br />
Review/Feedback :&emsp;&emsp;&emsp;<textarea rows="3" cols="18" name="feed1"></textarea>
<br><br><br>
<input type="submit" value="submit">
</form>
</center>
</body>
</html>