<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,Entity.Session"%>
 <%@page import="java.util.*,Entity.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>JPA Guest Book Web Application Tutorial</title>
    </head>
  
    <body>
        <form method="POST" action="user">
            Name: <input type="text" name="name" />
            Password: <input type="text" name="password" />
            type: 
            <select name="type">
                <option value=1>Professeur</option>
                <option value=2>Client</option>
                <option value=3>Elève</option>
                <option value=4>Tuteur</option>
            </select>
            Session: <select name="session">
                <%
            @SuppressWarnings("unchecked") 
            List<Session> sessions = (List<Session>)request.getAttribute("sessions");
            if (sessions != null) {
                for (Session ses : sessions) { %>
                    <option value="<% out.print(ses.getId().toString()); %>"> 
                            <%= ses %>
                    </option> <%
                }
            } %>
           </select>
            <input type="submit" value="Add" />
        </form>
 
        <hr><ol> <%
            @SuppressWarnings("unchecked") 
            List<User> guests = (List<User>)request.getAttribute("users");
            if (guests != null) {
                for (User guest : guests) { %>
                    <li> <%= guest %> </li> <%
                }
            } %>
        </ol><hr>
     </body>
 </html>