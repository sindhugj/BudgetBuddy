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
                        <h1>Total Budget Details</h1>
                        <table border="1">
                            <th>SNO</th>
                            <th>Allocated Amount</th>
                            <th>Actions</th>
                           
                                                                  <%
String citi=session.getAttribute("cname").toString();                                   
java.sql.Connection con=DB.MyDBBean.getDBConnection();

//SELECT * FROM `budjectamountdata` WHERE districtname='Hyderabad';


String q="select * from budjectamountdata where village='"+citi+"'";
java.sql.Statement st=con.createStatement();
java.sql.ResultSet rs=st.executeQuery(q);
int i=0;
while(rs.next())
{                                               
String bid=rs.getString(1);

%> 
<tr><td><%=i=i+1%></td>
    <td><%=rs.getString(2)%></td>
  
    <td><a href="citicomplaints.jsp?bid=<%=bid%>"><b>Complaint</b></a></td>
</tr>                   
<%

}     
%>             </table>     
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