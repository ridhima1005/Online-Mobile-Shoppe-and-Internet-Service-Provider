<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
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

<script type="text/javascript">
function formValidator()
{
   var nm=document.forms["myForm"]["nm"].value;
   var re = /^[a-zA-Z-,]/;
   var add=document.forms["myForm"]["addr"].value;
   var em = document.forms["myForm"]["email"].value;
   var atpos = em.indexOf("@");
   var dotpos = em.lastIndexOf(".");
   var mn = document.forms["myForm"]["ph"].value;
   var c = document.forms["myForm"]["city"].value;
   var mobNumLen = document.forms["myForm"]["ph"].value.length;     
   if(nm == "" || nm == null)
   {
     alert( "Name Field must not be empty" );
     document.myForm.nm.focus() ;
     return false;
   }
   if(!nm.match(re))
   {
     alert( "Name invaild" );
     document.myForm.nm.focus() ;
     return false;
   }
   if(add == "" || add == null)
   {
     alert( "Address Field must not be empty" );
     document.myForm.addr.focus() ;
     return false;
   } 
   
   if(mn == "" || mn == null || isNaN(mn) ||
           mn.length < 10 || mn.length >10 )
   {
     alert( "Mobile Number must be in the format and of  10 digits" );
     document.myForm.ph.focus() ;
     return false;
   }  
   if(em == null || em=="")
    {
        alert("Email field must not be empty");
        document.myForm.email.focus();
        return false;
    } 
   if (atpos<1 || dotpos<atpos+2 || dotpos+2>=em.length)
     {
        alert("Enter proper e-mail address");
        document.myForm.email.focus();
        return false;
     }
   if(c == "" || c == null)
   {
     alert( "city not be empty" );
     document.myForm.city.focus() ;
     return false;
   } 
    
   return( true );
   
}
</script>



<script type="text/javascript">
if(<%= session.getAttribute ("stock") %>==0)
	{
	alert('Out of stock');

	}
</script>
</head>

<body>

<div style="background-color:#1C0415; width:1320; height:30; font-size: 12px;">

 </div>
<img src="images\purple.jpg" alt="myimg" width="1320" height="100" />
<img src="images\mob2.jpg" width="60" height="80" hspace="30" style="position: absolute; top: 30px; left: 20px;"/>

<img src="images\nm.jpg" width="300" height="50" hspace="100" style="position: absolute; top: 50px; left: 20px; width: 300;"/>
<font color="#FFFFFF">
<table width="1320" BORDER="1" align="center" cellpadding="20">
<tr>
<td width="330" align="center" bgcolor="#1C0415"><strong><a href="home.jsp">HOME</a></strong></td>
<td width="330" align="center" bgcolor="#1C0415"><strong><a href="gallery.jsp">GALLERY</a></strong></td>
<td width="330" align="center" bgcolor="#1C0415"><strong><a href="aboutus.jsp">ABOUT US</a></strong></td>
<td width="330" align="center" bgcolor="#1C0415"><strong><a href="privacy.jsp">PRIVACY POLICIES</a></strong></td>

</tr>
</table ></font>

<br/>
<br/>






<table width="1320" height="434">
<tr>
<td width="300" height="428"><img src="images\cod.png" width="285" height="177" /></td>
<td width="704"><font color="black">
<center>


<h1> BUY NOW !!!</h1>
<form action="ordercontroller" method="post" name="myForm" onSubmit="return formValidator()">

<table width="596" height="129" border=2 align="center" >
<tr>
<th width="142" height="50">DELIVERY TIME</th>
<th width="60">NAME</th>
<th width="83">PRICE</th>
<th width="98">STOCK AVAILABLE</th>
<th width="177">TOTAL PRICE</th></tr>
<tr>
<td height="69">In 2-3 working days </td>
<td ><input type="text" name="pnm" value="<%= session.getAttribute ("nm") %>" readonly></input></td>
<td><input type="text" name="cnm" value="<%= session.getAttribute ("cost") %>" readonly ></input></td>
<td><input type="text" name="st" value="<%= session.getAttribute ("stock") %>" readonly></td>
<td><input type="text" name="tp" value="<%= session.getAttribute ("cost") %>" readonly></input></td>
</tr>
</table>
<br />
<br />

Name :&emsp;&emsp;&emsp;&emsp;<input type="text" name="nm" />
<br /><br />
Address :&emsp;&emsp;&emsp;<textarea rows="3" cols="16" name="addr"></textarea>
<br /><br />
Phone no :&emsp;&emsp;&emsp;<input type="text" name="ph" />
<br /><br />
e-mail ID :&emsp;&emsp;&emsp;<input type="text" name="email" />
<br /><br />
City :&emsp;&emsp;&emsp;&emsp;&emsp;<input type="text" name="city" />
<br /><br />




Date :&emsp;&emsp;&emsp;&emsp;


<input type="text" name="date_stamp" readonly>


<!-- note the position -->

<script type="text/javascript">
<!--//
var currentTime = new Date();
var month = currentTime.getMonth() + 1;
var day = currentTime.getDate();
var year = currentTime.getFullYear();

document.forms[0].date_stamp.value = day + "/" + month + "/" + year;
//-->
</script>


<br /><br />
COD :&emsp;&emsp;&emsp;<input type="radio" name="cod" checked="checked" />

<br /><br />

<input type = "submit"  value="PLACE ORDER"/>
</form>


<form action="gallery.jsp">
 <div>
  <center><button type="submit">CLOSE AND CONTINUE SHOPPING</button></center>
 </div>
</form>


</center>
</font></td>
<td width="300"><img src="images\c.jpg" width="285" height="177" /></td>

</tr>
</table>
</body>
</html>
