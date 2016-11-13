
<div class="wrap">

    <%@include file="includes/head.jsp"  %>
    <div class="clear"></div>
    <link href="styles.css" rel="stylesheet" type="text/css"></link>
    <script src="scriptaculous/lib/prototype.js" type="text/javascript"></script>
    <script src="scriptaculous/src/effects.js" type="text/javascript"></script>

    <script type="text/javascript" src="fabtabulous.js"></script>
    <script type="text/javascript" src="validation.js"></script>


    <div id="left">
        <center>
            <table>
                <tr><td>
            <h1>Contractor Login</h1>
            <%
                            if (request.getAttribute("msg") != null) {%>
            <font color="red" size="4"><%=request.getAttribute("msg")%></font>                  
            <%

                }

            %>
            <form action="contractorlogin" method="POST" id="test">
                <table border="0">
                    <tr>
                        <td>Contractor Id</td>
                        <td><input type="text" name="contractor" value="" class="required validate-email" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="psw" value="" class="required" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Login" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </td>
                </table>
            </form>  
                      </td>
                     <td>  </td>
              <td></td>
              <td> </td>
               <td>  </td>
              <td></td>
              <td> </td>
             
              
              </td>
              <td>
                        <img  src="images/battle.jpg"/></td>
        </tr> </table>             
        </center>
    </div>
</div>
<%@include file="includes/footer.jsp"  %>
<%@include file="foot.jsp"  %>