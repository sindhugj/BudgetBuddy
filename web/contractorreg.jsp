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
                        <h1>Contractor Registration</h1>
                        <%
if(request.getAttribute("msg")!=null)
{%>
<font color="red" size="4"><%=request.getAttribute("msg")%></font>                  
                        <%
  
}                           

%>
                        <form action="contractorreg" method="POST" id="test">
                         <table border="0">
                             <tr>
                                        <td>Contractor Id</td>
                                        <td><input type="text" name="citizen" value="" class="required validate-email" /></td>
                                    </tr>
                                 <tr>
                                        <td>Password</td>
                                        <td><input type="password" name="psw" value="" class="required" /></td>
                                    </tr>
                                    <tr>
                                        <td>Village</td>
                                        <td><select name="village" class="validate-selection" >
                                                <option value="">Select Village</option>
                                                <option value="Dilsukhnagar">Dilsukhnagar</option>
                                                <option value="LBNagar">LBNagar</option>
                                                <option value="Secundrabad">Secundrabad</option>
                                                <option value="Uppal">Uppal</option>
                                                
                                            </select></td>
                                    </tr>
                         
                                       <!--<tr>
                                        <td>District Name</td>
                                        <td><select name="district" class="validate-selection" >
                                                <option value="">Select District</option>
                                                <option value="Hyderabad">Hyderabad</option>
                                                <option value="RRDistrict">RRDistrict</option>
                                                <option value="Guntur">Guntur</option>
                                                <option value="Nalgonda">Nalgonda</option>
                                                <option value="Warangal">Warangal</option>
                                            </select></td>
                                    </tr>
                                    <tr>-->
                                        <td>State</td>
                                        <td><select name="state" class="validate-selection" >
                                                <option value="">Select State</option>
                                                <%
java.sql.Connection con=DB.MyDBBean.getDBConnection();
String q="select * from stateofficer";
java.sql.Statement st=con.createStatement();
java.sql.ResultSet rs=st.executeQuery(q);
while(rs.next())
{                                               

%>
                                                
<option value="<%=rs.getString(6) %>"><%=rs.getString(6) %></option>

<%
}
%>
                                               <!-- <option value="AndhraPradesh">Andhra Pradesh</option>
                                                <option value="TamilNadu">TamilNadu</option>
                                                <option value="Maharastra">Maharastra</option>
                                                <option value="Gujarath">Gujarath</option>
                                                <option value="Karnataka">Karnataka</option>-->
                                            </select></td>
                                    </tr>
                                    
                                    <tr><td></td><td><input type="submit" value="Register">
                                            
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