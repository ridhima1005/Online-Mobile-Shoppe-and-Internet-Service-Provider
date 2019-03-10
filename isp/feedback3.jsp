<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>

<link rel="stylesheet" href="style2.css" type="text/css" />

<script type="text/javascript">
function validate(feedback)
{
	if(feedback.value==0)
		{
		alert("Select the option");
		return false;
		}
	}
</script>

</head>

<body>
<table width="900" border="0" align="center">
		<tr>
			<td colspan="2"></td>
		</tr>
<tr>
			<td width="750">
				<table border="0" align="top" width=100%>
					<form name="feedback3" method="post" action="Feedback3Servlet">

						<%
							
						%>
						 Feedback For:&nbsp;&nbsp;&nbsp;<select name='feedback' id='feedback'>
									<option selected>Select Feedback
									<option value='MS'>Mobile shop
									<option value='IS'>Internet shop
									<option value='FW'>Full website
							</select> 
							<br>
							<br>
						<tr>
							<td bgcolor='#AAAAAA' colspan='4' align=center height=20><b>Contact
									Information(Just for reference.Not mandatory!)</b></td>
						</tr>

						<tr>
							<td>Name</td>
							<td><input type='text' name='name' id='name ' size='40'
								value='' /></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td>Address</td>
							<td><input type='text' name='address' id='address' size='40'
								value='' /></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td>Email</td>
							<td><input type='text' name='email' id='email' size='25'
								value='' /></td>
						</tr>

						<tr>
							<td>Phone</td>
							<td><input type='text' name='phone' id='phone' size='15'
								maxLength="10" value='' /></td>
						</tr>
<br>
<br>
						<tr>
							<td bgcolor='#AAAAAA' colspan='4' align=center height=20><b>Feedback and comments</b></td>
						</tr>

						
								 FEEDBACK&nbsp;&nbsp;&nbsp;<select name='feedback2' id='feedback2'>
									<option selected>Select 
									<option value='E'>Excellent
									<option value='O'>Outstanding
									<option value='G'>Good
									<option value='OK'>OK
									<option value='BTR'>Can be better
									<option value='S'>so-so
									<option value='B'>bad
									<option value='W'>worst
							</select> 
							<br>
							</td>
							<br>
							<br>
							
								<tr>
							<td>Comments:</td>
							<td><input type='text' name='comments' id='comments' size='100' height="100"
								value='' /></td>
						</tr>
						

						
						
	

							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>

						
						<tr>
							<td colspan=4 align=center>
								<form method="get" action="feedback3.html">
									<input type='submit' name='submit' id='submit' size='10'
										value='Submit' onClick="return validate(feedback)" />
								</form>
							</td>
						</tr>
						</td>
						</tr>
</table>
</body>
</html>