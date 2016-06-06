<%-- 
    Document   : studentHomePage
    Created on : 6 juin 2016, 10:24:50
    Author     : domitilledubern
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
        <script src="http://code.angularjs.org/angular-1.0.1.min.js"></script>
        <title>studentHomePage</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search2.jsp" %>
        <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a data-toggle="tab" href="#menu1">Création d'une équipe</a></li>
            <li><a data-toggle="tab" href="#menu2">Mon Projet</a></li>
            <li class="dropdown">
        </ul>
        
        <div class="tab-content" id="myTabContent">
            <div id="menu1" class="tab-pane fade active in">
                <p><br><%@include file="studentTeamCreation.jsp" %></p>
            </div>
            <div id="menu2" class="tab-pane fade">
                <p><br><%@include file="studentMyProject.jsp" %></p>
            </div>
        </div>
    </div>
</body>
</html>

