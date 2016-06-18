<%@page import="java.util.*,Entity.Session"%>
 <%@page import="java.util.*,Entity.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>JPA Guest Book Web Application Tutorial</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/i18n/defaults-*.min.js"></script>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
  
    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search3.jsp" %>
        <br>
        <h3 id="formarg">Créer un nouveau compte :</h3><br>
        <form method="POST" action="user?actionUser=ajouter">
            <center><table>
                    <tr><td class="tduser">Pseudo :</td>
                    <td class="tduser"><input type="text" name="pseudo" class="form-control"/></td>
            <td class="tduser">Password :</td>
                    <td class="tduser"><input type="password" name="password" class="form-control"/></td>
            <td class="tduser">Type :<td>
            <td class="tduser"><select name="type" class="selectpicker">
                <option value=1>Professeur</option>
                <option value=2>Client</option>
                <option value=3>Elève</option>
                <option value=4>Tuteur</option>
            </select></td>
            <td class="tduser">Session :</td>
                    <td><select name="session" class="selectpicker">
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
           </select></td>
           <td><input type="submit" value="Ajouter" class="btn btn-primary" /></td></tr>
                </table></form></center><br>
                <h3 id="formarg">Comptes déjà créés :</h3>
                <br>
                
        <form method="POST" action="user?actionUser=modifier">
            
            <center><table> <%
                @SuppressWarnings("unchecked") 
                List<User> guests = (List<User>)request.getAttribute("users");
                if (guests != null) {
                    for (User guest : guests) { %>
                    <tr>
                        <td class="tduser2">
                            <% out.print(guest.toString2()); %>
                        </td>   
                        <% if(guest.getType() == 3){ %>
                            <td class="tduser2"> Session: <select class="selectpicker" name="session_<% out.print(guest.getId().toString()); %>">
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
            </table></center>
            <br>
            <br>
            <input type="submit" class="btn btn-primary" value="Modifier" id="bou" />
            <br>
        </form>
     </body>
 </html>