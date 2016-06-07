<%@page import="java.util.*,Entity.Groups"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>JPA Guest Book Web Application Tutorial</title>
    </head>
  
    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search3.jsp" %>
        <form method="POST" action="group">
            Group: <input type="text" name="groupName" />
            <input type="submit" value="Add" />
        </form>
        
        <hr><ol> <%
            @SuppressWarnings("unchecked") 
            List<Groups> groups = (List<Groups>)request.getAttribute("groups");
            if (groups != null) {
                for (Groups gr : groups) { %>
                    <li> <%= gr %> </li> <%
                }
            } %>
        </ol><hr>
        
     </body>
 </html>