<%
if(session.getAttribute("said")!=null)
       {
%>
	<div class="wrap">
		
            <%@include file="includes/adminhead.jsp"  %>
		<div class="clear"></div>
<link href="styles.css" rel="stylesheet" type="text/css"></link>
            <script src="scriptaculous/lib/prototype.js" type="text/javascript"></script>
		<script src="scriptaculous/src/effects.js" type="text/javascript"></script>

		<script type="text/javascript" src="fabtabulous.js"></script>
		<script type="text/javascript" src="validation.js"></script>
                
                
		<div id="left">
                    <center>
                        <h1>Budget Allocating to State Officer</h1>
                        <%
if(request.getAttribute("msg")!=null)
{%>
<font color="red" size="4"><%=request.getAttribute("msg")%></font>                  
                        <%
  
}                           

%>
                        <form action="budgetallo" method="POST" id="test">
                         <table border="0">
                             <tr>
                                        <td>Amount Allocating</td>
                                        <td><input type="text" name="aa" value="" class="required validate-digits" /></td>
                                    </tr>
                                    <tr>
                                        <td>Village</td>
                                        <td><select name="vi" class="validate-selection" >
                                                <option value="">Select Village</option>
                                                <option value="kothapet">kothapet</option>
                                                <option value="DilsukhNagar">Dilsukh Nagar</option>
                                                <option value="Secundrabad">Secundrabad</option>
                                                <option value="LBNagar">LBNagar</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>District</td>
                                        <td><select name="di" class="validate-selection" >
                                                <option value="">Select District</option>
                                                <option value="Hyderabad">Hyderabad</option>
                                                <option value="Guntur">Guntur</option>
                                                <option value="Nalgonda">Nalgonda</option>
                                                <option value="RRDistrict">RRDistrict</option>
                                            </select></td>
                                    </tr>
                                         <tr>
                                        <td>State</td>
                                        <td><select name="state" class="validate-selection" >
                                                <option value="">Select State</option>
                                                <option value="AndhraPradesh">Andhra Pradesh</option>
                                                <option value="TamilNadu">TamilNadu</option>
                                                <option value="Maharastra">Maharastra</option>
                                                <option value="Gujarath">Gujarath</option>
                                                <option value="Karnataka">Karnataka</option>
                                            </select></td>
                                    </tr>
                         
                                       <tr>
                                        <td>State</td>
                                        <td><select name="state" class="validate-selection" >
                                                <option value="">Select State</option>
                                                <option value="AndhraPradesh">Andhra Pradesh</option>
                                                <option value="TamilNadu">TamilNadu</option>
                                                <option value="Maharastra">Maharastra</option>
                                                <option value="Gujarath">Gujarath</option>
                                                <option value="Karnataka">Karnataka</option>
                                            </select></td>
                                    </tr>
                                    <tr><td>In-charge Officer</td>
                                        <td></td></tr>
                                    
                                    <tr><td></td><td><input type="submit" value="Register State">
                                            
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