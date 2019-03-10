<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Order</title>

<link rel = "stylesheet" href = "style3.css" type = "text/css" />

<script language="javascript">
function formValidator()
{
   var nm=document.forms["internet_oder"]["first_name"].value;
   var re = /^[a-zA-Z-,]/;
   var ph=document.forms["internet_oder"]["phone"].value;
   var c=document.forms["internet_oder"]["credit_no"].value;
  
   if(nm == "" || nm == null)
   {
     alert( "Name  must not be empty" );
     document.internet_oder.first_name.focus() ;
     return false;
   }
   if(!nm.match(re))
   {
     alert( "Name invaild" );
     document.internet_oder.name.focus() ;
     return false;
   }

   if(ph == "" || ph == null)
   {
     alert( "phone number  must not be empty" );
     document.internet_oder.phone.focus() ;
     return false;
   }
   if(!isNaN(ph))
	   {
	   alert( "phone number invalid" );
	     document.internet_oder.phone.focus() ;
	     return false;
	   }
  if(ph.length<10||ph.length>10)
	  {
	  alert( "phone number  invalid" );
	     document.internet_oder.phone.focus() ;
	     return false;
	  }
  
  if(c == "" || c == null)
  {
    alert( "credit  must not be empty" );
    document.internet_oder.credit_no.focus() ;
    return false;
  }
  
   return( true );
}


</script>
</head>

<body>
<p class = "bigFont">Check Out</p>

<form method = "post" action = "Internet_order1" name=internet_order onsubmit="return formValidator()">

<p style = "font-weight: bold">Please input the following information.</p>

<table>

 <tr>
<td class = "right strong">First name:</td>
<td>
 <input type = "text" name = "first_name" size = "25" />
</td>
 </tr>

<tr>
<td class = "right strong">Last name:</td>
 <td>
<input type = "text" name = "last_name" size = "25" />
</td>
 </tr>

<tr>
 <td class = "right strong">Street:</td>
<td>
 <input type = "text" name = "street" size = "25" />
</td>
</tr>

<tr>
 <td class = "right strong">City:</td>
 <td>
<input type = "text" name = "city" size = "25" />
</td>
</tr>

 <tr>
 <td class = "right strong">State:</td>
<td>
<input type = "text" name = "state" size = "25" />
 </td>
</tr>

 <tr>
 <td class = "right strong">Zip code:</td>
 <td>
 <input type = "text" name = "zip_code" size = "10" />
 </td>
</tr>

 <tr>
<td class = "right strong">Phone #:</td>
 <td>
 
 <input type = "text" name = "phone" size = "10" />
 
 </td>
</tr>

<tr>
 <td class = "right strong">credit_no:</td>
<td>
<input type = "text" name = "credit_no" size = "25" />
 </td>
 </tr>

 <tr>
<td class = "right strong">Expiration:</td>
<td>
 <input type = "text" name = "expiry" size = "2" /> /
<input type = "text" name = "expiry2" size = "2" />
</td>
</tr>



<p>
<!--  <form  method="get" action="internet_default.jsp">-->
<input type = "submit" value = "Submit"/> <!--onclick="return vaidate()" />-->

</p>

<%
	String msg=(String)session.getAttribute("lerrorMsg");
	if(msg!=null && msg.length()>0){
		%>
		<tr>
		<td colspan="2" align="center">
		<% 
		out.println("<div class=boldred>"+msg+"</div>");
		%>
		</td>
		</tr>
		<% 
	}
	%>
	</table>
 </form>

</body>
</html>