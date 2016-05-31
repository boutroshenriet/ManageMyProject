<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,Entity.Subject"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title></title>
    </head>
  
    <body>
        <form method="POST" action="subject">
            Name: <input type="text" name="name" />
           <!-- Password: <input type="text" name="password" /> -->
            Client: <input type="text" name="client" />
            Description: <input type="text" name="description" />
            <input type="submit" value="Add" />
        </form>
 
        <hr><ol> <%
            @SuppressWarnings("unchecked") 
            List<Subject> subjects = (List<Subject>)request.getAttribute("subjects");
            if (subjects != null) {
                for (Subject subject : subjects) { %>
                    <li> <%= subject %> </li> <%
                }
            } %>
        </ol><hr>
     </body>
 </html>