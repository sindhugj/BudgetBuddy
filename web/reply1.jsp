<%
if(session.getAttribute("sdistrict")!=null)
       {
%>
	<div class="wrap">
		
            <%@include file="includes/districthead.jsp"  %>
		<div class="clear"></div>
<link href="styles.css" rel="stylesheet" type="text/css"></link>
            <script src="scriptaculous/lib/prototype.js" type="text/javascript"></script>
		<script src="scriptaculous/src/effects.js" type="text/javascript"></script>

		<script type="text/javascript" src="fabtabulous.js"></script>
		<script type="text/javascript" src="validation.js"></script>
                
                
		<div id="left">
                    <center>
                        
                        <%
                        String bid=request.getParameter("bid");
                       // String cid=request.getParameter("cid");
                        String complaint=request.getParameter("complaint");
                        String village=request.getParameter("village");

String reply=request.getParameter("reply");
String sdname=session.getAttribute("sdistrict").toString();


java.sql.Connection con=DB.MyDBBean.getDBConnection();
String q="update complaintsdata set complaintreply='"+reply+"', complaintreplygivenby='"+sdname+"' where bid='"+bid+"'";
java.sql.Statement st=con.createStatement();
int i=st.executeUpdate(q);
if(i>0)
       {
    response.sendRedirect("viewcomplaintsofciti.jsp?msg=Your Message Has Been Sent");
}else
       {
    response.sendRedirect("viewcomplaintsofciti.jsp?msg=Try Again");
}



%>
                        
                        
                        
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