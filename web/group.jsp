<%@page import="java.util.*,Entity.Groups"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>JPA Guest Book Web Application Tutorial</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
  
    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search3.jsp" %>
        <br>
        <h3 id="formarg">Ajouter un groupe :</h3>
        
        <form method="POST" action="group">
            
            <center><table>
                    <tr>
                        <td id="tdsession1">Groupe :</td>
                        <td id="tdsession2"><input type="text" name="groupName" placeholder="Saisir le nom du groupe" class="form-control"/></td>
                        <td id="td3"><input type="submit" value="Ajouter" class="btn btn-primary"/></td>
                    </tr>
                </table></center>
        </form>
        <br>
        <h3 id="formarg">Groupes déjà existants :</h3><br>
        
        <ol class="docs"> <%
            @SuppressWarnings("unchecked") 
            List<Groups> groups = (List<Groups>)request.getAttribute("groups");
            if (groups != null) {
                for (Groups gr : groups) { %>
                    <li> <%= gr %> </li><br> <%
                }
            } %>
        </ol>
        <%@include file="footer.jsp" %>
     </body>
 </html>