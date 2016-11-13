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
                        <h1>Allotting Budget</h1>
                        <%
if(request.getAttribute("msg")!=null)
{%>
<font color="red" size="4"><%=request.getAttribute("msg")%></font>                  
                        <%
  
}                           
if(request.getParameter("a")!=null)
{
    %>
    <font color="red" size="4"><%=request.getParameter("a")%></font>                   
<%
}
%>
                        <form action="allottocitizen.jsp" method="POST" id="test">
                         <table border="0">
                      <tr>
                                        <td> Village Name</td>
                                        <td><select name="citizen" class="validate-selection" >
                                                
                                                <option value="">Select</option>
                          
                                                <%
                                                String sid=session.getAttribute("sdname").toString();
                                                
java.sql.Connection con=DB.MyDBBean.getDBConnection();
String q="select * from citizendata";
java.sql.Statement st=con.createStatement();
java.sql.ResultSet rs=st.executeQuery(q);
while(rs.next())
{                                               


%>
                                                
<option value="<%=rs.getString(4)%>"><%=rs.getString(4)%></option>

<%
}
%>
                                          
                                            </select></td>
                                    </tr>
                                    <tr><td></td><td><input type="submit" value="Proceed">
                                            
                                            </td></tr>
                                    
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