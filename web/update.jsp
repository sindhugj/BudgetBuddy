<%
if(session.getAttribute("contact")!=null)
       {
%>
	<div class="wrap">
		
            <%@include file="includes/contractorhead.jsp"  %>
		<div class="clear"></div>
<link href="styles.css" rel="stylesheet" type="text/css"></link>
            <script src="scriptaculous/lib/prototype.js" type="text/javascript"></script>
		<script src="scriptaculous/src/effects.js" type="text/javascript"></script>

		<script type="text/javascript" src="fabtabulous.js"></script>
		<script type="text/javascript" src="validation.js"></script>
                
		<div id="left">
                    <center>
                        
                        <h1>Post Work Here</h1>
                        <%
                        
if(request.getAttribute("msg")!=null)
       {
    %>
    <font color="green" size="4"><%=request.getAttribute("msg").toString()  %></font>
                        <%
}

%>
                        
                        <form action="Work" method="POST" id="test">
                        
                <table border="1">
                    
                    <tbody>
                        <tr>
                            <td>Enter Work</td>
                            <td><textarea name="wname" rows="4" cols="20" class="required">
                        </textarea> 
                    </td>
                        </tr>
                        <tr>
                            <td>work image</td>
                            <td><input type="file" name="image" value="" /></td>
                        </tr>
                        <tr>
                            <td>No of Workers</td>
                            <td><input type="text" name="no" value="" class="required" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Post" /></td>
                        </tr>
                    </tbody>
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