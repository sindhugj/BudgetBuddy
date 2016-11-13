<%
if(session.getAttribute("sstate")!=null)
       {
%>
	<div class="wrap">
		
            <%@include file="includes/statehead.jsp"  %>
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
                        String dist=request.getParameter("district");
                        
if(request.getAttribute("msg")!=null)
{

%>
<font color="red" size="4"><%=request.getAttribute("msg")%></font>                  
                        <%
  
}                           

%>
                        <form action="AllottoDistrict" method="POST" id="test">
                         <table border="0">
                             <tr>
                                        <td>District Officer</td>
                                        <td><select name="don">
                                                <option value="">Select District Officer</option>
                                              <%
java.sql.Connection con=DB.MyDBBean.getDBConnection();
String q="select * from districtofficer where districtname='"+dist+"'";
java.sql.Statement st=con.createStatement();
java.sql.ResultSet rs=st.executeQuery(q);
while(rs.next())
{                                               

session.setAttribute("dname", dist);
%>
                                                
<option value="<%=rs.getString(2) %>"><%=rs.getString(2) %></option>

<%

}

%></select></td>
                                    </tr>
                                    <tr>
                                        <td>Enter Amount</td>
                                        <td><input type="text" name="amount" value="" class="required validate-number" /></td>
                                    </tr>
                                 <tr><td></td><td><input type="submit" value="Allot">
                                            
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