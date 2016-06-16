<%@page import="java.util.*,Entity.Session"%>
 <%@page import="java.util.*,Entity.User"%>
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
        <form method="POST" action="user?actionUser=ajouter">
            Pseudo: <input type="text" name="pseudo" />
            Password: <input type="text" name="password" />
            type: 
            <select name="type">
                <option value=1>Professeur</option>
                <option value=2>Client</option>
                <option value=3>El�ve</option>
                <option value=4>Tuteur</option>
            </select>
            Session: <select name="session">
                <%
            @SuppressWarnings("unchecked") 
            List<Session> sessions = (List<Session>)request.getAttribute("sessions");
            if (sessions != null) {
                %> <option value="0">...</option> <%
                for (Session ses : sessions) { %>
                    <option value="<% out.print(ses.getId().toString()); %>"> 
                            <%= ses %>
                    </option> <%
                }
            } %>
           </select>
            <input type="submit" value="Ajouter" />
        </form>
        <form method="POST" action="user?actionUser=modifier">   
            <table> <%
                @SuppressWarnings("unchecked") 
                List<User> guests = (List<User>)request.getAttribute("users");
                if (guests != null) {
                    for (User guest : guests) { %>
                    <tr>
                        <td>
                            <% out.print(guest.toString2()); %>
                        </td>   
                        <% if(guest.getType() == 3){ %>
                            <td> Session: <select name="session_<% out.print(guest.getId().toString()); %>">
                                    %> <option value="0">...</option> <% 
                                if (sessions != null) {
                                    for (Session ses : sessions) { 
                                        if(guest.getSession() != null){
                                            if(guest.getSession().getId().equals(ses.getId())){
                                                %> 
                                                <option value="<% out.print(ses.getId().toString()); %>" selected> 
                                                    <%= ses %>
                                                </option> 
                                                <%
                                            }
                                            else{%>
                                                <option value="<% out.print(ses.getId().toString()); %>"> 
                                                        <%= ses %>
                                                </option> <%
                                            }
                                        }
                                        else{%>
                                            <option value="<% out.print(ses.getId().toString()); %>"> 
                                                    <%= ses %>
                                            </option> <%
                                        }
                                    }
                                } %>
                               </select>
                            </td>
                        </tr>
                        <% } %>
                    <% } 
                } %>
            </table>
            <input type="submit" value="Modifier" />
        </form>
     </body>
 </html>