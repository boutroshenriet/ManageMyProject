<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,Entity.Session"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>JPA Guest Book Web Application Tutorial</title>
    </head>
  
    <body>
        <form method="POST" action="session?actionSession=add">
            Session: <input type="text" name="sessionName" />
            <input type="submit" value="Add" />
        </form>
        
        <hr><ol> <%
            @SuppressWarnings("unchecked") 
            List<Session> sessions = (List<Session>)request.getAttribute("sessions");
            if (sessions != null) {
                for (Session ses : sessions) { %>
                    <li> <%= ses %> </li> <%
                }
            } %>
        </ol><hr>
        
     </body>
 </html>