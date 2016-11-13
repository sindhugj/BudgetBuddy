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
                        <h1>Viewing Complaints</h1>
                        <table border="1">
                            <th>SNO</th>
                            <th>Village Name</th>
                            <th>Budget</th>
                            <th>Complaint Message</th>
                            <th>Actions</th>
                                                                 <%
                                                                 
        if(request.getParameter("msg")!=null)
{

%>
<font color="red" size="4"><%=request.getParameter("msg")%></font>                  
                        <%
  
}                           
                                                         
                                                                 
                                                                 
                                                                 
                                                                 
String sdname=session.getAttribute("sdname").toString();
java.sql.Connection con=DB.MyDBBean.getDBConnection();
String q="select * from budjectamountdata where districtname='"+sdname+"'";
java.sql.Statement st=con.createStatement();
java.sql.ResultSet rs=st.executeQuery(q);
while(rs.next())
{                                               

String tbid=rs.getString(1);
String tamount=rs.getString(2);
String tvillage=rs.getString(3);
//String district=rs.getString(4);

String q1="select * from complaintsdata where bid='"+tbid+"'";
java.sql.Statement st1=con.createStatement();
java.sql.ResultSet rs1=st1.executeQuery(q1);
int i=0;
while(rs1.next())
{
    %>
     <tr><td><%=i+1%></td>
         <td><%=tvillage%></td>
         <td><%=tamount%></td>
         <td><%=rs1.getString(5) %></td>
         <td><a href="reply.jsp?bid=<%=tbid%>&&cid=<%=rs.getString(2)%>&&complaint=<%=rs1.getString(5)%>&&village=<%=tvillage%>"><b>Reply</b></a></td>
     </tr>                                                         
  <%     
}
}

%> 
                        
                        </table>
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