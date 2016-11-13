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
String aid=session.getAttribute("sdistrict").toString();            

%>  
		<p id="options"><font color="orange">Welcome, <%=aid%></font><a href="logout.jsp">Log Out</a></p>
		<h1><a href="districthome.jsp">Budget Buddy</a></h1>
		<ul id="menu">
			<li><a href="districthome.jsp">Home</a></li>
			<li><a href="contractorreg.jsp">Register Contractor</a></li>
                       <li><a href="budgettocitizen.jsp">Allot Budget to Contractor</a></li>
                        <li><a href="viewcomplaintsofciti.jsp">View Complaints</a></li>
		</ul>
		
		<div class="clear"></div>
		
		<div id="left">
		
                
                </div>
		
		
	</div>