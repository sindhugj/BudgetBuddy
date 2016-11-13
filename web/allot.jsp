<%
if(session.getAttribute("scoid")!=null)
       {
%>
	<div class="wrap">
		
            <%@include file="includes/centralhead.jsp"  %>
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
                        String state=request.getParameter("state");
                        
                        
                        
if(request.getAttribute("msg")!=null)
{

%>
<font color="red" size="4"><%=request.getAttribute("msg")%></font>                  
                        <%
  
}                           

%>
                        <form action="AllotServlet" method="POST" id="test">
                         <table border="0">
                             <tr>
                                        <td>State Officer</td>
                                        <td><select name="so">
                                                <option value="">Select State Officer</option>
                                              <%
                                              
                                              String ceo=session.getAttribute("scoid").toString();
java.sql.Connection con=DB.MyDBBean.getDBConnection();
String q="select * from stateofficer where statename='"+state+"'";
java.sql.Statement st=con.createStatement();
java.sql.ResultSet rs=st.executeQuery(q);
while(rs.next())
{                                               

session.setAttribute("sname", state);
%>
                                                
<option value="<%=rs.getString(3) %>"><%=rs.getString(2) %></option>

<%
}
%></select></td>
                                    </tr>
                                    <tr>
                                        <td>Enter Amount</td>
                                        <td><input type="text" name="amount" value="" class="required validate-number" /></td>
                                    </tr>
                                 <tr><td></td><td><input type="submit" value="Allot">
                                            
                                            <input type="reset" value="Clear"/></td></tr>
                                    
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