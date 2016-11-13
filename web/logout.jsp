<%-- 
    Document   : logout
    Created on : Jun 22, 2013, 11:34:58 PM
    Author     : TrueLogiK Labs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
session.invalidate();
response.sendRedirect("index.jsp");

%>
    </body>
</html>
