<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,Entity.Year"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>JPA Guest Book Web Application Tutorial</title>
    </head>
  
    <body>
        <form method="POST" action="year">
            Name: <input type="text" name="name" />
            <input type="submit" value="Add" />
        </form>
 
        <hr><ol> <%
            @SuppressWarnings("unchecked") 
            List<Year> years = (List<Year>)request.getAttribute("years");
            if (years != null) {
                for (Year year : years) { %>
                    <li> <%= year %> </li> <%
                }
            } %>
        </ol><hr>
     </body>
 </html>