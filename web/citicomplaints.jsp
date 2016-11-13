<%
if(session.getAttribute("sco")!=null)
       {
%>
	<div class="wrap">
		
            <%@include file="includes/citizenhead.jsp"  %>
		<div class="clear"></div>
<link href="styles.css" rel="stylesheet" type="text/css"></link>
            <script src="scriptaculous/lib/prototype.js" type="text/javascript"></script>
		<script src="scriptaculous/src/effects.js" type="text/javascript"></script>

		<script type="text/javascript" src="fabtabulous.js"></script>
		<script type="text/javascript" src="validation.js"></script>
                
                
		<div id="left">
                    <center>
                        <h1>Send Complaints Here !</h1>    
                 <%
                 
String bid=request.getParameter("bid");
if(request.getParameter("b")!=null)
{
    %>
    <font color="red" size="4"><%=request.getParameter("b")%></font>
                        
                        <%
}
%>       
<form action="complaints.jsp" method="post" id="test">                  
<table border="0">

    <tr><td></td>
        <td><input type="hidden" name="bid" value="<%=bid%>" /></td></tr>
        <tr>
            <td>Complaint Message</td>
            <td><textarea name="complaint" rows="4" cols="20" class="required" ></textarea>
                </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Send Complaint" /></td>
        </tr>

</table>
</form>                     
 </center>
    </div>
		
	
	</div>
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <%@include file="includes/footer.jsp"  %>
  <%@include file="foot.jsp"  %>
<%  }
else
       {
    response.sendRedirect("index.jsp");
}%>