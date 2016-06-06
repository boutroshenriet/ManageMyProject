<%-- 
    Document   : studentTeamCreation
    Created on : 6 juin 2016, 10:24:14
    Author     : domitilledubern
--%>
<%@page import="java.util.*,Entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="myForm" onsubmit="return validateMyForm()" method="post" action="team?actionTeam=create">

            <h2>EQUIPE BORDEAUX</h2><br><br>

            <div class="panel panel-info" style="width: 17%; height: 70%; margin-left: 30px; background: #d9edf7">
                <div class="panel-heading">
                    <h3 class="panel-title"> SESSION 1</h3>
                </div>  
                <textarea name="textarea" rows="33" cols="23" style="background-color: #d9edf7">
                    <%
                        @SuppressWarnings(  "unchecked")
                        int teamSize = (Integer)request.getAttribute("teamSize");
                        List<User> students = (List<User>) request.getAttribute("studentsToAdd");
                        User me = (User) request.getAttribute("me");
                        if (students != null) {
                            for (User student : students) {%>
                                <%= student%><%
                            }
                        } %>
                </textarea> 
            </div>
            <div class="panel panel-info" style="width:17%; height:30%">
                <div class="panel-heading">
                    <h3 class="panel-title"> EQUIPE 1</h3>
                </div>  
                <div class="panel-body">

                    <fieldset>

                        <table>

                            <tr>
                                <td id=td1> Nom de l'équipe: </td>
                                <td id=td2> <input class="tableau2" type="text" name="teamName"/> </td>
                            </tr>
                            <tr>
                                <td id=td1 name="stu11"> Elève 1: </td>
                                <td id=td2>
                                    <% out.print(me); %>
                                </td>
                            </tr>
                            <% for(int i = 2; i <= teamSize; i++){ %>
                                <tr>
                                    <td id=td1 name="stu1<%= i %>"> Elève <%= i %>: </td>
                                    <td id=td2> 
                                        <select class="tableau2" name="el<%= i %>">
                                            <% if (students != null) {
                                                    for (User student : students) { %>
                                            <option value="
                                                    <% out.print(student.getId().toString());
                                                    %>"><%= student%></option>
                                            <li> student </li> <%
                                                            }
                                                        } %>                                    
                                        </select> 
                                    </td>
                                </tr>
                            <% }%>
                            <tr>
                                <td></td>
                                <td id=td2><input type="submit" class="btn btn-primary" value="Valider"/> </td>
                            </tr>

                        </table> 

                    </fieldset>

                </div>
            </div>



    </body>
</html>

