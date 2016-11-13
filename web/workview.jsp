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
                            <th>Work Name</th>
                            <th>Work Image</th>
                            <th>No of Workers</th>
                            <th>Date</th>
                           
                                                                  <%
//String citi=session.getAttribute("cname").toString();                                   
java.sql.Connection con=DB.MyDBBean.getDBConnection();
String q="select * from workdata";
java.sql.Statement st=con.createStatement();
java.sql.ResultSet rs=st.executeQuery(q);
int i=0;
while(rs.next())
{                                               
String bid=rs.getString(1);
String iurl=rs.getString(3);

%> 
<tr>
    <td><%=i+1%></td>
     <td><%=rs.getString(2)%></td>
     <td><img style="height: 80px;width:80px;" src="project/<%=iurl%>" /></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
    <td><%=rs.getString(6)%></td>
  
   
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