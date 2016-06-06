<%-- 
    Document   : teacherHomePage
    Created on : 18 mai 2016, 18:06:24
    Author     : Pierre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="angular.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body>   
        <%@include file="header.jsp" %>
        <br>
        <div class="form-group" style="width: 30%; margin-left: 68%">
            <div class="input-group input-group-md icon-addon addon-md">
                <input type="text" placeholder="Saisir le nom d'une équipe" name="" id="schbox" class="form-control">
                <span class="input-group-btn">
                    <a href="searchResults.jsp" type="submit" class="btn btn-primary">Rechercher</a>
                </span>
            </div>
            </div>
            <div>
        <a class="btn btn-primary" style="margin: 30px" href="year?action=addYear">Années</a>
        <a class="btn btn-primary" style="margin: 30px" href="subject?action=addSuject">Sujets</a>
        <a class="btn btn-primary" style="margin: 30px" href="user?action=addUsers">Utilisateurs</a>
        <a class="btn btn-primary" style="margin: 30px" href="document?action=documents">Documents</a>
        <a class="btn btn-primary" style="margin: 30px" href="session?action=sessions">Sessions</a>
        </div>
    </body>
</html>
