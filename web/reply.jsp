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
                        <h1>Giving Reply To the Complaint</h1>
                        <%
                        String bid=request.getParameter("bid");
                        String cid=request.getParameter("cid");
                        String complaint=request.getParameter("complaint");
                        String village=request.getParameter("village");

%>
                        <form action="reply1.jsp" method="POST" id="test">
                         <table border="0">
                             
                               
                                 <tr>
                               
                                 <td><input type="hidden" name="bid" value="<%=bid%>"/></td>
                                 </tr>
                             <tr>
                                 <td>Village Name Is <b> :</b></td>
                                 <td><%=village%><input type="hidden" name="village" value="<%=village%>"/></td>
                                 
                             </tr>
                               <tr>
                                 <td>Received Complaint Message<b> :</b></td>
                                 <td><%=complaint%><input type="hidden" name="village" value="<%=complaint%>"/></td>
                                </tr>
                             
                             <tr>
                                 <td>Give Reply</td>
                                 <td><textarea name="reply" rows="4" cols="20" class="required" ></textarea>
                                    </td>
                                 
                             </tr>
                               <tr>
                                   <td></td>
                                   <td><input type="submit" value="Send"/>
                                            
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