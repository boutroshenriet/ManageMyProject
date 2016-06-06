<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,Entity.Session"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>JPA Guest Book Web Application Tutorial</title>
    </head>
  
    <body>
        <form method="POST" action="year?action=add">
            Année: <input type="year" name="sessionName" />
            <input type="submit" value="Add" />
        </form>
 
        <hr><ol>
           <form method="POST" action="year?action=choose">
                Années disponibles: 
                <select name="yearList">
            <%
           
            @SuppressWarnings("unchecked") 
            List<Session> sessions = (List<Session>)request.getAttribute("sessions");
            
             HttpSession sessionCurrent = null;
            sessionCurrent = request.getSession();
            if (sessions != null) {
                for (Session ses : sessions) { 
                    %> <option value="<% out.print(ses.getId().toString()); %>"> 
                           <b> <%= session %> </b> 
                       </option> <%
                    }
            } %>
            </select>
           <input type="submit" value="Selectionner" />
            </form>
        </ol><hr>
     </body>
 </html>