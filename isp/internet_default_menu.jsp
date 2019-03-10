<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>menu</title>
<link rel = "stylesheet" href = "styles.css" type = "text/css" />
</head>

<body onload="InitMenu()" onclick="HideMenu(menubar)" id="Bdy" >
<div id="menubar" class="menubar">
<div id="Bar5" class="Bar" menu="menu9" title="About us/Log Out">
</div>
<div id="Bar1" class="Bar" menu="menu1"><a href="internet_about.jsp">About us</a></div>
<div id="Bar2" class="Bar" menu="menu2"><a href="subscribe.jsp">New Subscription</a></div>
<div id="Bar3" class="Bar" menu="menu3"><a href="dataplans.jsp">Data Plans</a></div>
<div id="Bar4" class="Bar" menu="menu4"><a href="tc.jsp">Term-conditions</a></div>
<div id="Bar5" class="Bar" menu="menu5"><a href="internet_default.jsp">Internet Shop Home Page</a></div>
<div id="Bar6" class="Bar" menu="menu6"><a href="index.html"> Shop Home Page</a></div>
</div>

<div id="menu9" class="menu">
<div id="menuItem9_1" class="menuItem" title="About us" cmd="internet_about_us.jsp" class="whitelink">About us</div>
<div id="menuItem9_1" class="menuItem" title="logout" cmd="login_internet.jsp" class="whitelink">Logout</div>
</div>
<br>

</body>
</html>