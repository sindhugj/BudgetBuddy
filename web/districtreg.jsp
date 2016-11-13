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
                        <h1>District Officer Registration</h1>
                        <%
if(request.getAttribute("msg")!=null)
{%>
<font color="red" size="4"><%=request.getAttribute("msg")%></font>                  
                        <%
  
}                           

%>
                        <form action="districtreg" method="POST" id="test">
                         <table border="0">
                             <tr>
                                        <td>District Officer Id</td>
                                        <td><input type="text" name="don" value="" class="required validate-email" /></td>
                                    </tr>
                                 <tr>
                                        <td>Password</td>
                                        <td><input type="password" name="psw" value="" class="required" /></td>
                                    </tr>
                                    <tr>
                                        <td>Phone Number</td>
                                        <td><input type="text" name="phno" value="" class="required validate-digits" /></td>
                                    </tr>
                         
                                       <tr>
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