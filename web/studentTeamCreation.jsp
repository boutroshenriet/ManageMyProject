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
        
<br>
        <form name="myForm" onsubmit="return validateMyForm()" method="post" action="team?actionTeam=create">

            <div class="panel panel-info" style="width: 32%; height: 70%; margin-left: 30px; background: #d9edf7; float:left">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <%
                        User me = (User) request.getAttribute("me");
                        out.print(me.getSession().getSessionName().toString());
                        %> </h3>
                </div>  
                <br>
                <div name="textarea" rows="33" cols="53" style="background-color: #d9edf7">
                    <%
                        @SuppressWarnings(  "unchecked")
                        int teamSize = (Integer) request.getAttribute("teamSize");
                        List<User> students = (List<User>) request.getAttribute("studentsToAdd");
                        if (students != null) {
                            for (User student : students) {%>
                            <div style="margin-left:30px"><%= student%><br></div><%
                                        }
                                    } %>
                <br>
                </div> 
            </div>
            <center><table>

                    <tr>
                        <td id=tdc1> Nom de l'équipe: </td>
                        <td id=tdc2>
                            <div class="form-group">
                                <label for="exampleInputEmail1"></label>
                                <input type="text" class="form-control" name="teamName">
                            </div></td>

                    </tr>
                    <tr>
                        <td id=td1 name="stu11" > Elève 1: </td>
                        <td id=td2>
                            <% out.print(me); %>
                        </td>
                    </tr>
                    <% for (int i = 2; i <= teamSize; i++) {%>
                    <tr>
                        <td id=td1 name="stu1<%= i%>"> Elève <%= i%>: </td>
                        <td id=td2> 
                            <select class="selectpicker" data-live-search="true" name="el<%= i%>">
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
                        <td id=td3><input type="submit" class="btn btn-primary" value="Valider"/> </td>
                    </tr>


                </table></center>

                    <HR style="border-top: white">

<%@include file="footer.jsp" %>

    </body>
</html>
