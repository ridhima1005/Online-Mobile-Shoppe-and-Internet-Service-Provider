
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true" import="internet.*"%>

<%
	GeneratedId gen = new GeneratedId();
	int form_id = gen.generateFormId();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Subscription Form</title>

<link rel="stylesheet" href="style2.css" type="text/css" />

<script language="javascript">
function formValidator()
{
   var nm=document.forms["subscribe"]["name"].value;
   var re = /^[a-zA-Z-,]/;
   var add=document.forms["subscribe"]["address"].value;
   var e=document.forms["subcribe"]["email"].value;
   var atpos=e.indexOf("@");
   var dotpos=e.lastIndexOf(".");
   var ph=document.forms["subcribe"]["phone"].value;
   var dob=document.forms["subcribe"]["dob"].value;
  
   if(nm == "" || nm == null)
   {
     alert( "Name  must not be empty" );
     document.subscribe.name.focus() ;
     return false;
   }
   if(!nm.match(re))
   {
     alert( "Name invaild" );
     document.subscribe.name.focus() ;
     return false;
   }
   
   if(add == "" || add == null)
   {
     alert( "Feedback must not be empty" );
     document.subscribe.address.focus() ;
     return false;
   } 
   
   if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
     {
     alert("Not a valid e-mail address");
     return false;
     }

   if(ph == "" || ph == null)
   {
     alert( "phone number  must not be empty" );
     document.subscribe.phone.focus() ;
     return false;
   }
   if(!isNaN(ph))
	   {
	   alert( "phone number invalid" );
	     document.subscribe.phone.focus() ;
	     return false;
	   }
  if(ph.length<10||ph.length>10)
	  {
	  alert( "phone number  invalid" );
	     document.subscribe.phone.focus() ;
	     return false;
	  }
  
  if(dob == "" || dob == null)
  {
    alert( "dob  must not be empty" );
    document.subscribe.dob.focus() ;
    return false;
  }
  
   return( true );
}
	

	//subscribe.submit();
	//}
	
</script>
</head>

<body>
	<table width="900" border="0" align="center">
		<tr>
			<td colspan="2"></td>
		</tr>

		<tr>
			<td width="900" valign="top"><%@ include
					file="internet_default_menu.jsp"%></td>
		</tr>

		<tr>
			<td width="750">
				<table border="0" align="top" width=100%>
					<form name="subscribe" method="post" action="SubscribeServlet" onSubmit="return formValidator()">

						<%
							
						%>
						<tr>
							<td bgcolor='#AAAAAA' colspan='4' align=center height=20><b>Contact
									Information</b></td>
						</tr>

						<tr>
							<td width=150>Form Id</td>
							<td align='left'><input type='text' name='form_id'
								id='form_id ' size='10' value='<%=form_id%>' /></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td>Name<sup>*</sup></td>
							<td><input type='text' name='name' id='name ' size='40'
								value='' /></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td>Address<sup>*</sup></td>
							<td><input type='text' name='address' id='address' size='40'
								value='' /></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td>Email<sup>*</sup></td>
							<td><input type='text' name='email' id='email' size='25'
								value='' /></td>
						</tr>

						<tr>
							<td>Phone<sup>*</sup></td>
							<td><input type='text' name='phone' id='phone' size='15'
								maxLength="10" value='' /></td>
						</tr>

						<tr>
							<td bgcolor='#AAAAAA' colspan='4' align=center height=20><b>Personal
									Information</b></td>
						</tr>

						<tr>
							<td colspan='4'><br> DOB<sup>*</sup> <input type='text'
								name='dob' id='dob' size='10' value='' />(yyyy-mm-dd)&nbsp;&nbsp;&nbsp;
								<br> <br> Gender&nbsp;&nbsp;&nbsp;<input type='radio'
								name='gender' id='gender' size='10' value='Male' /> Male
								&nbsp;&nbsp; <input type='radio' name='gender' id='gender'
								size='10' value='Female'> Female &nbsp;&nbsp;&nbsp; <br>
								<br> Nationality&nbsp;&nbsp;&nbsp;<select
								name='nationality' id='nationality'>
									<option selected>Select Nationality
									<option value='IN'>Indian
									<option value='RS'>Russian
									<option value='PK'>Pakistani
									<option value='AM'>American
									<option value='BR'>British
									<option value='SR'>Srilankan
							</select> <br></td>
						<tr>
							<td bgcolor='#AAAAAA' colspan='4' align=center height=20><b>Proof
									Details</b>
							<td>
						</tr>

						<br>
						<p>Tick the options which are been submitted.</p>

						<tr>
							<td>Proofs</td>

							<td>Proofs&nbsp;&nbsp;&nbsp;<select name='proofs'
								id='proofs'>
									<option selected>Select proof
									<option value='PC'>Pan card
									<option value='DL'>Driving licsense
									<option value='AC'>Adhar card
									<option value='EB'>Electricity bill
									<option value='TB'>Telephone bill
							</select>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td>All the ( <sup>*</sup>) marked are mandatory
							</td>
						</tr>
						<tr>
							<td colspan=4 align=center>
								<!--  <form method="get" action="subscribe.html">-->
									<input type='submit' name='submit' id='submit' size='10'
										value='Submit'/> <!--onclick="subscribe.html" />-->
								</form>
							</td>
						</tr>
						</td>
						</tr>
						</form>
						</table>
				</table>
</body>
</html>