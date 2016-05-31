<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,Entity.Team"%>
 <%@page import="java.util.*,Entity.Subject"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>JPA Guest Book Web Application Tutorial</title>
    </head>
  
    <body>
        <form method="POST" action="team">
            Nom d'équipe: <input type="text" name="teamName" />
            <select name="selectsub">
                <%
                    @SuppressWarnings("unchecked") 
                    List<Subject> subs = (List<Subject>)request.getAttribute("subjects");
                    if (subs != null) {
                        for (Subject sub : subs) {
                            %>
                            <option value="<% sub.getId(); %>">
                                <% sub.getNameSubject(); %> 
                            </option> 
                            <%
                        }
                    }
                %>
            </select>
            <input type="submit" value="Add" />
        </form>
         <hr><ol> <%
            @SuppressWarnings("unchecked") 
            List<Team> teams = (List<Team>)request.getAttribute("teams");
            if (teams != null) {
                for (Team team : teams) { %>
                    <li> <%= team %> </li> <%
                }
            } %>
        </ol><hr>
        
     </body>
 </html>