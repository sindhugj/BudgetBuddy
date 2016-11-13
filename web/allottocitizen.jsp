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
                        String citi=request.getParameter("citizen");
                        
if(request.getAttribute("msg")!=null)
{

%>
<font color="red" size="4"><%=request.getAttribute("msg")%></font>                  
                        <%
  
}                           

%>
                        <form action="AllottoCitizen" method="POST" id="test">
                         <table border="0">
         
                                             <%
                                             //String cname=session.getAttribute("cname").toString();
java.sql.Connection con=DB.MyDBBean.getDBConnection();
String q="select * from budjectamountdata where village='SattvaQ'";
java.sql.Statement st=con.createStatement();
java.sql.ResultSet rs=st.executeQuery(q);
while(rs.next())
{                                               
String state=rs.getString(5);
String district=rs.getString(4);
session.setAttribute("sname", state);
session.setAttribute("dname", district);
session.setAttribute("cname", citi);
}
%>  
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