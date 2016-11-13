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
                        <h1>State Officer Registration</h1>
                        <%
if(request.getAttribute("msg")!=null)
{%>
<font color="red" size="4"><%=request.getAttribute("msg")%></font>                  
                        <%
  
}                           

%>
                        <form action="statereg" method="POST" id="test">
                         <table border="0">
                             <tr>
                                        <td>State Officer Name</td>
                                        <td><input type="text" name="son" value="" class="required" /></td>
                                    </tr>
                                    <tr>
                                        <td>E-mail</td>
                                        <td><input type="text" name="email" value="" class="required validate-email" /></td>
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