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
       <%
       String cid=session.getAttribute("scid").toString();
       String bid=request.getParameter("bid");
       String msg=request.getParameter("complaint");
       String Complaintreply="SattvaQ";
       String givenby="SattvaQ";
       
     java.sql.Connection con=DB.MyDBBean.getDBConnection();
    
     


 String q1="select * from complaintsdata";
 java.sql.Statement st1=con.createStatement();
 java.sql.ResultSet rs=st1.executeQuery(q1);
 if(rs.next())
         {
     String tbid=rs.getString(3);
 if(tbid.equals(bid))
         {
response.sendRedirect("citicomplaints.jsp?b=Complaint was Sent Already U Can't Send Again");

 }else
 {
        
String q="insert into complaintsdata values('0','"+cid+"','"+bid+"','"+Complaintreply+"','"+msg+"','"+givenby+"')";      
java.sql.Statement st=con.createStatement();
int i=st.executeUpdate(q);
        if(i>0)
       {
    
  response.sendRedirect("citicomplaints.jsp?b=Complaint was Sent");
}else
       {
              response.sendRedirect("citicomplaints.jsp?b=Please Try Again");
}
 
      
 }           }

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