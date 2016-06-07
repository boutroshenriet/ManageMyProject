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
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search4.jsp" %>
        <form name="myForm" onsubmit="return validateMyForm()" method="post">

            <h2>EQUIPE BORDEAUX</h2><br><br>

            <div class="panel panel-info" style="width: 17%; height: 70%; margin-left: 30px; background: #d9edf7">
                <div class="panel-heading">
                    <h3 class="panel-title"> SESSION 1</h3>
                </div>  
                <textarea name="textarea" rows="33" cols="23" style="background-color: #d9edf7">
                    <%
                        @SuppressWarnings(  "unchecked")
                        List<User> students = (List<User>) request.getAttribute("studentsToAdd");
                        if (students != null) {
        for (User student : students) {%>
                            <li> <%= student%> </li> <%
                                    }
                                } %>
                </textarea> 
            </div>
             
                

                        <center><table>
                            <tr>
                                <td id=td1> Nom de l'équipe: </td>
                                <td id=td2> <form>
  <div class="form-group">
    <label for="exampleInputEmail1"></label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="fName">
  </div></td>
                            </tr>
                            <tr>
                                <td id=td1 name="stu11"> Elève 1: </td>
                                <td id=td2>
                                    <select class="tableau2" name="el1">
                                        <%
                                            if (students != null) {
                                                for (User student : students) { %>
                                        <option value="<% out.print(student.getId().toString());%>"><%= student%></option>
                                        <li> student </li> <%
                                                        }
                                                    }%>                                    
                                    </select></td>
                            </tr>
                            <tr>
                                <td id=td1 name="stu12"> Elève 2: </td>
                                <td id=td2><select class="selectpicker" data-live-search="true">
                                        <option>Elève1</option>
                                        <option>Elève2</option>
                                        <option>Elève3</option>
                                        <option>Elève4</option>
                                        <option>Elève5</option>
                                        <option>Elève6</option>
                                    </select>

                                   </td>
                            </tr>
                            <tr>
                                <td id=td1 name="stu13"> Elève  3: </td>
                                <td id=td2> <select class="selectpicker" data-live-search="true">
                                        <option>Elève1</option>
                                        <option>Elève2</option>
                                        <option>Elève3</option>
                                        <option>Elève4</option>
                                        <option>Elève5</option>
                                        <option>Elève6</option>
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1 name="stu14"> Elève 4: </td>
                                <td id=td2> <select class="selectpicker" data-live-search="true">
                                        <option>Elève1</option>
                                        <option>Elève2</option>
                                        <option>Elève3</option>
                                        <option>Elève4</option>
                                        <option>Elève5</option>
                                        <option>Elève6</option>
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1 name="stu15"> Elève 5: </td>
                                <td id=td2> <select class="selectpicker" data-live-search="true">
                                        <option>Elève1</option>
                                        <option>Elève2</option>
                                        <option>Elève3</option>
                                        <option>Elève4</option>
                                        <option>Elève5</option>
                                        <option>Elève6</option>
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1 name="stu16"> Elève 6: </td>
                                <td id=td2> <select class="selectpicker" data-live-search="true">
                                        <option>Elève1</option>
                                        <option>Elève2</option>
                                        <option>Elève3</option>
                                        <option>Elève4</option>
                                        <option>Elève5</option>
                                        <option>Elève6</option>
                                    </select> </td>
                            </tr>

                            <tr>
                                <td></td>
                                <td id=td3><a href="#" class="btn btn-primary">Valider</a> </td>
                            </tr>
                        </table></center>

                   
            </div>




    </body>
</html>

