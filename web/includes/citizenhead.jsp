<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="author" content="Luka Cvrk (www.solucija.com)" />
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link rel="stylesheet" href="css/style.css" type="text/css" />
	<title>Budget Buddy</title>
</head>
<body>
	<div class="wrap">
            
                        <%
String aid=session.getAttribute("sco").toString();            

%>
		<p id="options"><font color="orange">Welcome, <%=aid%></font><a href="logout.jsp">Log Out</a></p>
		<h1><a href="citizenhome.jsp">Budget Buddy</a></h1>
		<ul id="menu">
			<li><a href="citizenhome.jsp">Home</a></li>
			<li><a href="viewcitibudget.jsp">View Budget</a></li>
                        <li><a href="workview.jsp">View Work Details</a></li>
                        <!--<li><a href="citicomplaints.jsp">Complaint to District Officer</a></li>
			<li><a href="districtofficer.jsp">District Login</a></li>
			<li><a href="stateofficer.jsp">State Login</a></li>-->
			
		</ul>
		
		<div class="clear"></div>
		
		<div id="left">
		
                
                </div>
		
		
	</div>